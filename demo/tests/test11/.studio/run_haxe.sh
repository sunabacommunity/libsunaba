#!/bin/sh
chmod +x "/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64/haxe"
chmod +x "/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64/haxelib"
chmod +x "/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64/neko"
export PATH="/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64/":$PATH
export LD_LIBRARY_PATH="/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64/":$LD_LIBRARY_PATH
export HAXE_STD_PATH="/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64//std":$HAXE_STD_PATH
"/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64/haxelib" newrepo
"/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64/haxelib" install "/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/libsunaba.zip"
"/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64/haxelib" install "/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/gamepak.zip"
"/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64/haxelib" install "/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/sunaba-studio-api.zip"
"/home/mintkat/.local/share/Steam/steamapps/common/Sunaba Studio/data_Sunaba.Studio_linuxbsd_x86_64/toolchain/linux-x86_64/haxe" "$@" 