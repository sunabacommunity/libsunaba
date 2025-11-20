@echo off
haxe --class-path C:/Users/mintkat/libsunaba/demo/tests/test11/src -main TestPlugin --library libsunaba --library gamepak --library sunaba-studio -D source-map -lua C:/Users/mintkat/libsunaba/demo/tests/test11/.studio/plugin.lua -D lua-vanilla -D absolute-path -D SANDBOXED
echo %ERRORLEVEL% > "C:\Users\mintkat\libsunaba\demo\tests\test11\.studio\build.log"
