#!/usr/bin/env python
import os
import sys

from methods import print_error
from SCons.Script import AddOption, GetOption, Default, Glob
from build_luajit import build_luajit

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
env_vars = Variables()
env_vars.Add(EnumVariable("luaapi_host_cc", "LuaJIT builds some tools to assist with the rest of the build. You can set the host CC to be used here in the case of cross compilation.", "gcc", ("gcc", "clang")))
lua_runtime = GetOption('lua_runtime') or ARGUMENTS.pop("lua_runtime", "lua")
if isinstance(lua_runtime, list):
    # Defensive: GetOption might return a single-element list in some environments
    lua_runtime = lua_runtime[0]

if lua_runtime.lower() not in ["lua", "luajit"]:
    raise ValueError(f"Invalid lua_runtime: expected either 'lua' or 'luajit', got {lua_runtime}")

localEnv = Environment(tools=["default"], PLATFORM="")
env_vars.Update(localEnv)

use_mingw = ARGUMENTS.get("use_mingw", "no")

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

if env['platform'] == 'windows':
    if use_mingw != "yes":
        env.msvc = True
    else:
        env.msvc = False
    # Add Windows libraries for networking and threading
    env.Append(LIBS=['ws2_32'])
    # Add explicit linker flags for static pthread linking
    if env.msvc == False:
        env.Append(LINKFLAGS=['-lwsock32'])
else:
    env.msvc = False

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
    exclude_files = ["onelua.c", "lua.c"]
    lua_c_files = [f for f in all_lua_c if not any(ef in str(f) for ef in exclude_files)]
    lua_sources.extend(lua_c_files)

    # Only add source files to the sources list
    sources.extend(lua_sources)

    # lua_file = "{}{}{}".format("luau", env["suffix"], env["SHLIBSUFFIX"])
    # lua_libraryfile = "bin/{}/{}".format(env["platform"], lua_file)
    # lua_library = lua_env.StaticLibrary(lua_libraryfile, source=lua_sources)
elif(env["lua_runtime"] == "luajit"):
    LUAJIT_DIR = 'luajit'
    LUAJIT_SRC = os.path.join(LUAJIT_DIR, 'src')
    build_luajit(env, True)

    env.Append(CPPPATH=["luajit/src/"])
    env.Append(LIBPATH=[Dir("luajit/src").abspath])
    if env.msvc:
        env.Append(LIBS=['lua51'])
    elif env["platform"]  == "macos":
        # On macOS, use the static library directly
        env.Append(LIBS=[File("luajit/src/libluajit.a")])
    else:
        env.Append(LIBS=['libluajit'])

if env["platform"] != "web":
    env.Append(CPPPATH=["luasocket/src/"])
    lsocket_sources = []
    all_lsocket_files = Glob("luasocket/src/*.c")

    # Exclude Unix-specific files on Windows
    if env["platform"] == "windows":
        unix_files = ["serial.c", "unix.c", "unixdgram.c", "unixstream.c", "usocket.c"]
        lsocket_sources = [f for f in all_lsocket_files if not any(uf in str(f) for uf in unix_files)]
    else:
        lsocket_sources = all_lsocket_files

    sources.extend(lsocket_sources)

### < LUA STUFF


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
