#!/bin/sh
chmod +x "/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/haxe"
chmod +x "/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/haxelib"
chmod +x "/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/neko"
export PATH="/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/":$PATH
export DYLD_LIBRARY_PATH="/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/":$DYLD_LIBRARY_PATH
export DYLD_FALLBACK_LIBRARY_PATH="/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/":$DYLD_FALLBACK_LIBRARY_PATH
install_name_tool -add_rpath "/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/" "/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/haxelib" 2>/dev/null || true
install_name_tool -add_rpath "/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/" "/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/haxe" 2>/dev/null || true
install_name_tool -add_rpath "/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/" "/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/neko" 2>/dev/null || true
"/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/haxelib" newrepo
"/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/haxelib" install "/Users/Shared/studio/.godot/mono/temp/bin/Debug/msgpack-haxe.zip"
"/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/haxelib" install "/Users/Shared/studio/.godot/mono/temp/bin/Debug/libsunaba.zip"
"/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/haxelib" install "/Users/Shared/studio/.godot/mono/temp/bin/Debug/gamepak.zip"
"/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/haxelib" install "/Users/Shared/studio/.godot/mono/temp/bin/Debug/sunaba-studio-api.zip"
"/Users/Shared/studio/.godot/mono/temp/bin/Debug/toolchain/mac-universal/haxe" "$@" 