#!/usr/bin/env python
import os
import sys

from methods import print_error
from SCons.Script import AddOption, GetOption, Default, Glob


libname = "sunaba"
projectdir = "demo"

# Support both styles:
#   scons lua_runtime=lua       (ARGUMENTS style)
#   scons --lua_runtime=lua    (long-option style)
AddOption('--lua_runtime',
          dest='lua_runtime',
          type='string',
          help="Lua runtime to use (lua or luajit)",
          default='lua')
lua_runtime = GetOption('lua_runtime') or ARGUMENTS.pop("lua_runtime", "lua")
if isinstance(lua_runtime, list):
    # Defensive: GetOption might return a single-element list in some environments
    lua_runtime = lua_runtime[0]

if lua_runtime.lower() not in ["lua", "luajit"]:
    raise ValueError(f"Invalid lua_runtime: expected either 'lua' or 'luajit', got {lua_runtime}")

localEnv = Environment(tools=["default"], PLATFORM="")

# Option to enable AddressSanitizer (adds -fsanitize=address to compile and link)
AddOption('--asan',
          dest='asan',
          action='store_true',
          help='Enable AddressSanitizer (adds -fsanitize=address to compile and link)',
          default=False)

# (The chosen asan option will be propagated into the cloned env below.)


# Build profiles can be used to decrease compile times.
# You can either specify "disabled_classes", OR
# explicitly specify "enabled_classes" which disables all other classes.
# Modify the example file as needed and uncomment the line below or
# manually specify the build_profile parameter when running SCons.

# localEnv["build_profile"] = "build_profile.json"

customs = ["custom.py"]
customs = [os.path.abspath(path) for path in customs]

opts = Variables(customs, ARGUMENTS)
opts.Update(localEnv)

Help(opts.GenerateHelpText(localEnv))

env = localEnv.Clone()

if not (os.path.isdir("godot-cpp") and os.listdir("godot-cpp")):
    print_error("""godot-cpp is not available within this folder, as Git submodules haven't been initialized.
Run the following command to download godot-cpp:

    git submodule update --init --recursive""")
    sys.exit(1)

env = SConscript("godot-cpp/SConstruct", {"env": env, "customs": customs})

# Propagate the ASan option into the active build environment and add flags when requested.
# Use GetOption here (store_true) so invocation is simply: scons --asan
env['asan'] = GetOption('asan')
if env.get('asan'):
    # AddressSanitizer is not generally supported on Windows in this project setup.
    if env['platform'] == 'windows':
        print('AddressSanitizer requested but may not be supported on Windows toolchains.')
    else:
        # Add sanitizer flags to compile and link lines. fno-omit-frame-pointer improves ASan traces.
        asan_flags = ['-fsanitize=address', '-fno-omit-frame-pointer']
        env.Append(CCFLAGS=asan_flags)
        env.Append(CXXFLAGS=asan_flags)
        env.Append(CFLAGS=asan_flags)
        env.Append(LINKFLAGS=['-fsanitize=address'])



env.Append(CPPPATH=["src/"])
sources = Glob("src/*.cpp")
sources.extend(Glob("src/io/*.cpp"))

### > LUA STUFF

env["lua_runtime"] = lua_runtime

if env["platform"] == "web" and lua_runtime == "luajit":
    print("LuaJIT doesn't support WebAssembly, building with Lua instead")
    lua_runtime = "lua"

env.Append(CPPPATH=["sol2/include/"])

luajit_lib = None

if (env["lua_runtime"] == "lua"):
    lua_sources = []

    env.Append(CPPPATH=["lua-5.4.8/"])
    # Add only .c and .cpp source files, not headers
    lua_sources.extend(Glob("lua-5.4.8/*.cpp"))
    # Exclude onelua.c to avoid duplicate symbols with individual .c files
    all_lua_c = Glob("lua-5.4.8/*.c")
    lua_c_files = [f for f in all_lua_c if "onelua.c" not in str(f)]
    lua_sources.extend(lua_c_files)

    # Only add source files to the sources list
    sources.extend(lua_sources)

    # lua_file = "{}{}{}".format("luau", env["suffix"], env["SHLIBSUFFIX"])
    # lua_libraryfile = "bin/{}/{}".format(env["platform"], lua_file)
    # lua_library = lua_env.StaticLibrary(lua_libraryfile, source=lua_sources)
elif(env["lua_runtime"] == "luajit"):
    LUAJIT_DIR = 'luajit'
    LUAJIT_SRC = os.path.join(LUAJIT_DIR, 'src')
    # Build LuaJIT static lib automatically
    if (env["platform"] == "windows"):
        if (env.get("is_msvc")):
            luajit_lib = env.Command(
                target=os.path.join(LUAJIT_SRC, 'luajit.lib'),
                source=None,
                action=f"cd {LUAJIT_SRC} && msvcbuild.bat static"
            )
        else:
            luajit_lib = env.Command(
                target=os.path.join(LUAJIT_SRC, 'libluajit.a'),
                source=None,
                action=f"cd {LUAJIT_DIR} && mingw32-make BUILDMODE=static"
            )
    else:
        luajit_lib = env.Command(
            target=os.path.join(LUAJIT_SRC, 'libluajit.a'),
            source=None,
            action=f"cd {LUAJIT_DIR} && make BUILDMODE=static"
        )
    env.Append(CPPPATH=["luajit/src"])
    # Ensure the built LuaJIT static library is linked into the final shared library.
    # Add the luajit build directory to LIBPATH and request the luajit library by name.
    # On MSVC the produced file is 'luajit.lib', on MinGW it's 'libluajit.a' and
    # both can be linked by specifying LIBS=['luajit'] and LIBPATH=[LUAJIT_SRC].
    env.Append(LIBPATH=[LUAJIT_SRC])
    # Prefer appending the actual build target node so SCons will add it to the
    # link line once it has been built. Fall back to the library name as a
    # string if the command wasn't created for some reason.
    if luajit_lib is not None:
        env.Append(LIBS=[luajit_lib])
    else:
        env.Append(LIBS=["luajit"])
    # Also add the explicit library file to the link line. Some toolchains
    # (especially when building a SharedLibrary) may not pick up LIBPATH/LIBS
    # in all cases, so pass the concrete library path to the linker.
    if env["platform"] == "windows":
        if env.get("is_msvc"):
            env.Append(LINKFLAGS=[os.path.join(LUAJIT_SRC, 'luajit.lib')])
        else:
            env.Append(LINKFLAGS=[os.path.join(LUAJIT_SRC, 'libluajit.a')])
    else:
        env.Append(LINKFLAGS=[os.path.join(LUAJIT_SRC, 'libluajit.a')])
    # MSVC build produces both luajit.lib and lua51.lib (compat). Ensure lua51.lib
    # is also considered by the linker since it can contain the compatibility
    # symbols expected by code using the Lua C API.
    if env["platform"] == "windows" and env.get("is_msvc"):
        env.Append(LINKFLAGS=[os.path.join(LUAJIT_SRC, 'lua51.lib')])

### < LUA STUFF

### > QUICKJS STUFF

quickjs_sources = [
    'quickjs/quickjs-amalgam.c'
]

quickjs_env = env.Clone()
if quickjs_env['CC'] == 'cl':
    quickjs_env.Append(CCFLAGS=['/std:c11', '/experimental:c11atomics'])
    quickjs_env.Append(CPPDEFINES=['WIN32_LEAN_AND_MEAN'])
else:
    quickjs_env.Append(CCFLAGS=['-std=c11'])
    quickjs_env.Append(CPPDEFINES=['_GNU_SOURCE'])

# Build QuickJS as a static library using the separate environment
quickjs_lib = quickjs_env.Library('quickjs', quickjs_sources)

env.Prepend(LIBS=[quickjs_lib])

env.Append(CPPPATH=[ "quickjs/"])

### < QUICKJS STUFF

if env["target"] in ["editor", "template_debug"]:
    try:
        doc_data = env.GodotCPPDocData("src/gen/doc_data.gen.cpp", source=Glob("doc_classes/*.xml"))
        sources.append(doc_data)
    except AttributeError:
        print("Not including class reference as we're targeting a pre-4.3 baseline.")

#-fsanitize=address>
# .dev doesn't inhibit compatibility, so we don't need to key it.
# .universal just means "compatible with all relevant arches" so we don't need to key it.
suffix = env['suffix'].replace(".dev", "").replace(".universal", "")

lib_filename = "{}{}{}{}".format(env.subst('$SHLIBPREFIX'), libname, suffix, env.subst('$SHLIBSUFFIX'))
library = env.SharedLibrary(
    "bin/{}/{}".format(env['platform'], lib_filename),
    source=sources,
)

if (not luajit_lib is None):
    Depends(library, luajit_lib)

# Instead of installing the entire library target (which includes files that may not exist),
# install only the main shared library file (.dll)
main_lib = "bin/{}/{}".format(env['platform'], lib_filename)
copy = env.Install("{}/bin/{}/".format(projectdir, env["platform"]), main_lib)

default_args = [library, copy]
Default(*default_args)