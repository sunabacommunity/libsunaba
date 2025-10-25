import os
import platform
import sys


def CopyLuaJIT(env, target, source):
    if not os.path.exists(target):
        env.Execute(f"git -C {source} worktree add --detach --force {os.path.relpath(target, source)}")


def MakeLuaJIT(env, build_dir):
    CopyLuaJIT(env, build_dir, "luajit")
    make_flags = {
        "TARGET_SYS": {
            "windows": "Windows",
            "linux": "Linux",
            "macos": "Darwin",
            "ios": "iOS",
            "android": "Linux",
        }[env["platform"]],
        "HOST_CC": "gcc -m32" if sys.platform == "linux" and env["arch"] in ["x86_32", "arm32"] else "",
        "STATIC_CC": env["CC"],
        "DYNAMIC_CC": env["CC"],
        "TARGET_LD": env["CC"],
        "TARGET_STRIP": env.get("STRIP", ""),
        "TARGET_FLAGS": " ".join(env["CCFLAGS"]),
        "TARGET_LDFLAGS": " ".join(env["LINKFLAGS"]),
        "MACOSX_DEPLOYMENT_TARGET": "11.0",
        "XCFLAGS": "-DLUAJIT_ENABLE_LUA52COMPAT",
    }
    make_flags_line = " ".join(
        f"{key}='{value}'"
        for key, value in make_flags.items()
        if value
    )
    return env.Command(
        f"{build_dir}/src/libluajit.a",
        "lib",
        action=f"make -C {build_dir} amalg {make_flags_line}",
        ENV={
            "PATH": env.get("PATH", os.getenv("PATH")),
        },
    )


def exists(env):
    return True


def generate(env):
    build_dir = env["build_dir"]

    # Make sure luajit.h and jit/vmdef.lua has been generated
    env.Execute("make -C luajit/src luajit.h jit/vmdef.lua MACOSX_DEPLOYMENT_TARGET=11.0")

    # Windows + MSVC special case: build using luajit/src/msvcbuild.bat
    if env["platform"] == "windows" and env.get("is_msvc"):
        CopyLuaJIT(env, f"{build_dir}/luajit", "luajit")
        
        # Use `/MT` matching godot-cpp flags and add `/DLUAJIT_ENABLE_LUA52COMPAT`
        # Also, avoid building luajit.exe by filtering out lines containing "luajit."
        with open(f"{build_dir}/luajit/src/msvcbuild.bat", "r") as msvcbuild:
            msvcbuild_lines = [
                line.replace("/MD", "/MT" if env.get("use_static_cpp") else "/MD")
                    .replace("cl ", "cl /DLUAJIT_ENABLE_LUA52COMPAT ")
                for line in msvcbuild
                if "luajit." not in line
            ]
        with open(f"{build_dir}/luajit/src/msvcbuild.bat", "w") as msvcbuild:
            msvcbuild.write("".join(msvcbuild_lines))

        cmds = [
            (
                f'"{env["vcvarsall_path"]}" x64_arm64'
                if env["vcvarsall_path"] and env["arch"] == "arm64" and platform.machine().lower() == "amd64"
                else ""
            ),
            f"cd {build_dir}/luajit/src",
            f"msvcbuild.bat {"debug" if env.get("debug_crt") else ""} amalg mixed",
        ]
        libluajit = env.Command(
            f"{build_dir}/luajit/src/lua51.lib",
            "lib",
            action=" && ".join(cmd for cmd in cmds if cmd),
        )
    # macOS universal special case: build x86_64 and arm64 separately, then `lipo` them together
    elif env["platform"] == "macos" and env["arch"] == "universal":
        env_x86_64 = env.Clone()
        # SCons Environment doesn't provide `remove_options` — manually filter out any
        # existing -arch tokens so we can set the desired arch cleanly.
        arch_tokens = {"-arch", "x86_64", "arm64"}
        env_x86_64["CCFLAGS"] = [f for f in env_x86_64.get("CCFLAGS", []) if f not in arch_tokens]
        env_x86_64["LINKFLAGS"] = [f for f in env_x86_64.get("LINKFLAGS", []) if f not in arch_tokens]
        env_x86_64.Append(
            CCFLAGS=["-arch", "x86_64"],
            LINKFLAGS=["-arch", "x86_64"],
        )
        luajit_x86_64 = MakeLuaJIT(env_x86_64, f"{build_dir}/luajit/x86_64")
        
        env_arm64 = env.Clone()
        arch_tokens = {"-arch", "x86_64", "arm64"}
        env_arm64["CCFLAGS"] = [f for f in env_arm64.get("CCFLAGS", []) if f not in arch_tokens]
        env_arm64["LINKFLAGS"] = [f for f in env_arm64.get("LINKFLAGS", []) if f not in arch_tokens]
        env_arm64.Append(
            CCFLAGS=["-arch", "arm64"],
            LINKFLAGS=["-arch", "arm64"],
        )
        luajit_arm64 = MakeLuaJIT(env_arm64, f"{build_dir}/luajit/arm64")

        # Combine the two architecture-specific static libs into a universal one using `lipo`.
        # Make a Command that depends on the two produced archives.
        libluajit = env.Command(
            f"{build_dir}/luajit/libluajit.a",
            [luajit_x86_64, luajit_arm64],
            action="lipo -create -output $TARGET $SOURCES",
            ENV={"PATH": env.get("PATH", os.getenv("PATH"))},
        )
    else:
        libluajit = MakeLuaJIT(env, f"{build_dir}/luajit")

    env.Append(CPPDEFINES=["LUAJIT", "SOL_LUAJIT=1", "SOL_USING_CXX_LUA=0"])
    env.Append(CPPPATH="luajit/src")
    env.Append(LIBS=libluajit)
