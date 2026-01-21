import sys
import os
import platform

def run(cmd):
    print("Running: %s" % cmd)
    res = os.system(cmd)
    code = 0
    if (os.name == 'nt'):
        code = res
    else:
        code = os.WEXITSTATUS(res)
    if code != 0:
        print("Error: return code: " + str(code))
        sys.exit(code)

def build_luajit(env, extension=False):
    if extension or not env.msvc:
        os.chdir("luajit")
        
        # cross compile posix->windows
        if (os.name == 'posix') and env['platform'] == 'windows':
            host_arch = platform.machine()
            run("make clean")
            if (host_arch != env['arch']):
                if (host_arch == 'x86_64' and env['arch'] == 'x86_32'):
                    host_cc = env['luaapi_host_cc'] + ' -m32'
                    run('make HOST_CC="%s" CROSS="%s" BUILDMODE="static" TARGET_SYS=Windows' % (host_cc, env['CC'].replace("-gcc", "-").replace("-clang", "-")))

                else:
                    print("ERROR: Unsupported cross compile!")
                    sys.exit(-1)
            else:
                run('make HOST_CC="%s" CROSS="%s" BUILDMODE="static" TARGET_SYS=Windows' % (env['luaapi_host_cc'], env['CC'].replace("-gcc", "-").replace("-clang", "-")))

        elif env['platform']=='macos':
            run("make clean MACOSX_DEPLOYMENT_TARGET=10.12")
            arch = env['arch']
            if arch == "universal":
                run('make CC="%s" TARGET_FLAGS="-arch x86_64" MACOSX_DEPLOYMENT_TARGET=10.12' % (env['CC']))
                run('mv src/libluajit.a src/libluajit64.a')
                run('make clean MACOSX_DEPLOYMENT_TARGET=10.12')
                run('make CC="%s" TARGET_FLAGS="-arch arm64" MACOSX_DEPLOYMENT_TARGET=10.12' % (env['CC']))
                run('lipo -create src/libluajit.a src/libluajit64.a -output src/libluajit.a')
                run('rm src/libluajit64.a')
            else:
                run('make CC="%s" TARGET_FLAGS="-arch %s" MACOSX_DEPLOYMENT_TARGET=10.12' % (env['CC'], arch))
        elif env['platform']=='linuxbsd' or env['platform']=='linux':
            host_arch = platform.machine()
            run("make clean")
            if (host_arch != env['arch']):
                if (host_arch == 'x86_64' and env['arch'] == 'x86_32'):
                    host_cc = env['luaapi_host_cc'] + ' -m32'
                    run('make HOST_CC="%s" CROSS="%s" BUILDMODE="static" CFLAGS="-fPIC"' % (host_cc, env['CC'].replace("-gcc", "-").replace("-clang", "-")))
                elif env['arch'] in ['arm64', 'aarch64']:
                    # Cross-compile to ARM64
                    # Extract the cross-compiler prefix from CC if available
                    cc = env.get('CC', '')
                    if 'aarch64' in cc or 'arm64' in cc:
                        # Use the provided cross-compiler
                        cross_prefix = cc.replace("-gcc", "-").replace("-clang", "-")
                    else:
                        # Default to aarch64-linux-gnu- prefix
                        cross_prefix = "aarch64-linux-gnu-"
                    
                    host_cc = env.get('luaapi_host_cc', 'gcc')
                    run('make HOST_CC="%s" CROSS="%s" TARGET_SYS=Linux BUILDMODE="static" CFLAGS="-fPIC"' % (host_cc, cross_prefix))
                else:
                    print("ERROR: Unsupported cross compile!")
                    sys.exit(-1)

            else:
                run('make CC="%s" BUILDMODE="static" CFLAGS="-fPIC"' % env['CC'])

        elif (env["platform"] == "windows"):
            os.chdir("src")
            # Determine architecture for msvcbuild
            # Use subprocess to run msvcbuild with SCons MSVC environment
            import subprocess
            
            # Get the environment from SCons which should have MSVC variables set
            build_env = dict(os.environ)
            
            # Add SCons environment variables needed for MSVC
            if 'ENV' in env:
                for key, value in env['ENV'].items():
                    if isinstance(value, str):
                        build_env[key] = value
            
            # Set architecture hint for msvcbuild
            if env['arch'] == 'x86_64':
                build_env['VSCMD_ARG_TGT_ARCH'] = 'x64'
                print("Building LuaJIT for x64...")
                result = subprocess.call("msvcbuild.bat static", shell=True, env=build_env)
            elif env['arch'] == 'x86_32':
                build_env['VSCMD_ARG_TGT_ARCH'] = 'x86'
                print("Building LuaJIT for x86...")
                result = subprocess.call("msvcbuild.bat static", shell=True, env=build_env)
            else:
                print("ERROR: Unsupported architecture '%s' for Windows." % env['arch'])
                sys.exit(-1)
            
            if result != 0:
                print("Error: msvcbuild failed with return code: " + str(result))
                sys.exit(result)
        else:
            print("ERROR: Unsupported platform '%s'." % env['platform'])
            sys.exit(-1)
    else:
        # Determine architecture for msvcbuild
        if env['arch'] == 'x86_64':
            run("msvcbuild static")
        elif env['arch'] == 'x86_32':
            run("msvcbuild static x86")
        else:
            print("ERROR: Unsupported architecture '%s' for Windows." % env['arch'])
            sys.exit(-1)
