#!/usr/bin/env python
import os
import sys

from methods import print_error


libname = "lucid"
projectdir = "demo"

localEnv = Environment(tools=["default"], PLATFORM="")

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

env.Append(CPPPATH=["src/"])
sources = Glob("src/*.cpp")

### > LUAU STUFF

# lua_env = env.Clone()

# # if env["target"] == "template_debug":
# #     lua_env.Append(CCFLAGS=["-g"])

# if lua_env["platform"] == "linux":
#     lua_env.Append(CPPDEFINES=["LUA_USE_POSIX"])
# elif lua_env["platform"] == "ios":
#     lua_env.Append(CPPDEFINES=["LUA_USE_IOS"])

# lua_env.Append(CPPDEFINES = ["MAKE_LIB"])
# # lua_env.Append(CXXFLAGS = ["-std=c++17"])
# lua_env.Append(CFLAGS = ["-std=c99"])

lua_cpp_paths = []

luau_paths = [
    "Common",
    "Ast",
    "Compiler",
    "CodeGen",
    "Analysis",
    "Config",
    "VM",
    "EqSat",
]

luau_include_paths = [os.path.join("luau", x, "include") for x in luau_paths]
luau_source_paths = [os.path.join("luau", x, "src") for x in luau_paths]
lua_cpp_paths.extend(luau_include_paths)
lua_cpp_paths.extend(luau_source_paths)

env.Append(CPPPATH=lua_cpp_paths)
# env.AppendUnique(CPPPATH=lua_cpp_paths, delete_existing=True)


lua_includes = []
lua_sources = []
for path in luau_include_paths:
    lua_includes.extend(Glob(path + "/*.hpp"))
    lua_includes.extend(Glob(path + "/*.h"))
    # lua_includes.extend(Glob(path + "/*.cpp"))
    # lua_includes.extend(Glob(path + "/*.c"))

for path in luau_source_paths:
    # lua_sources.extend(Glob(path + "/*.hpp"))
    # lua_sources.extend(Glob(path + "/*.h"))
    lua_sources.extend(Glob(path + "/*.cpp"))
    lua_sources.extend(Glob(path + "/*.c"))

luabridge_include = "LuaBridge3/Source"

lua_includes.extend(Glob(luabridge_include + "/*.hpp"))
lua_includes.extend(Glob(luabridge_include + "/*.h"))
lua_sources.extend(Glob(luabridge_include + "/*.cpp"))
lua_sources.extend(Glob(luabridge_include + "/*.c"))


sources.extend(lua_sources)

# lua_file = "{}{}{}".format("luau", env["suffix"], env["SHLIBSUFFIX"])
# lua_libraryfile = "bin/{}/{}".format(env["platform"], lua_file)
# lua_library = lua_env.StaticLibrary(lua_libraryfile, source=lua_sources)

### < LUAU STUFF


if env["target"] in ["editor", "template_debug"]:
    try:
        doc_data = env.GodotCPPDocData("src/gen/doc_data.gen.cpp", source=Glob("doc_classes/*.xml"))
        sources.append(doc_data)
    except AttributeError:
        print("Not including class reference as we're targeting a pre-4.3 baseline.")

# .dev doesn't inhibit compatibility, so we don't need to key it.
# .universal just means "compatible with all relevant arches" so we don't need to key it.
suffix = env['suffix'].replace(".dev", "").replace(".universal", "")

lib_filename = "{}{}{}{}".format(env.subst('$SHLIBPREFIX'), libname, suffix, env.subst('$SHLIBSUFFIX'))

library = env.SharedLibrary(
    "bin/{}/{}".format(env['platform'], lib_filename),
    source=sources,
)

copy = env.Install("{}/bin/{}/".format(projectdir, env["platform"]), library)

default_args = [library, copy]
Default(*default_args)
