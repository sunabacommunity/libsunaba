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



lua_sources = []

# Add only .c and .cpp source files, not headers
lua_sources.extend(Glob("lua-5.4.8/*.cpp"))
lua_sources.extend(Glob("lua-5.4.8/*.c"))

# Add include paths for headers instead of adding them to sources
env.Append(CPPPATH=["lua-5.4.8/"])
env.Append(CPPPATH=["sol2/include/"])

# Only add source files to the sources list
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
