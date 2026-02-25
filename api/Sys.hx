import lua.Boot;
import lua.Io;
import lua.Lua;
import sys.io.FileInput;
import sys.io.FileOutput;
import sunaba.core.TypedArray;
import sunaba.OSService;
import sunaba.core.native.NativeObject;
import sunaba.core.ArrayList;
import sunaba.core.Variant;
import sunaba.core.native.NativeReference;
import sunaba.core.native.ScriptType;
import sunaba.core.Dictionary;
import sunaba.App;
import sunaba.core.StringArray;
import sunaba.core.VariantNative;

@:coreApi
class Sys {
	static var _system_name:String;

	public static inline function print(v:Dynamic):Void {
		return lua.Lib.print(v);
	}

	public static inline function println(v:Dynamic):Void {
		return lua.Lib.println(v);
	}

	public inline static function args():Array<String> {
		var args: TypedArray<String> = untyped __lua__("_G.__args");
		var args = args.toArray();
		return args;
	}

	public static function command(cmd:String, ?args:Array<String>):Int {
		var native = new NativeReference("res://Engine/HxSys.cs", new ArrayList(), ScriptType.csharp);
		if (args == null) {
			args = new Array();
		}
		var argsTa: TypedArray<String> = StringArray.fromArray(args);
		var funcArgs = new ArrayList();
		funcArgs.append(cmd);
		var argsV = VariantNative.fromStringArray(argsTa);
		funcArgs.append(argsV);
		var code: Int = native.call("Command", funcArgs);
		return code;
	}

	public inline static function cpuTime():Float {
		return lua.Os.clock();
	}

	public inline static function exit(code:Int):Void {
		App.exit(code);
	}

	public inline static function getChar(echo:Bool):Int {
		return lua.Io.read().charCodeAt(0);
	}

	static function getSystemName():String {
		return OSService.getName();
	}

	public static function systemName():String {
		if (_system_name == null)
			_system_name = getSystemName();
		return _system_name;
	}

	public static function environment():Map<String, String> {
		var native = new NativeReference("res://Engine/HxSys.cs", new ArrayList(), ScriptType.csharp);
		var envDict: Dictionary = native.call("Environment", new ArrayList());
		var env: Map<String, String> = new Map();
		var envKeys = envDict.keys();
		var envValues = envDict.values();
		for (i in 0...envKeys.size()) {
			var key: String = envKeys[i];
			var value: String = envValues[i];
			env[key] = value;
		}
		return env;
	}

	@:deprecated("Use programPath instead") public static function executablePath():String {
		return programPath(); //Misc.exepath();
	}

	public inline static function programPath():String {
		return haxe.io.Path.join([getCwd(), Lua.arg[0]]);
	}

	public inline static function getCwd():String {
		var native = new NativeReference("res://Engine/HxSys.cs", new ArrayList(), ScriptType.csharp);
		return haxe.io.Path.addTrailingSlash(native.call("GetCwd", new ArrayList()));
	}


	public inline static function setCwd(s:String):Void {
		var args: Array<Variant> = [s];
		var native = new NativeReference("res://Engine/HxSys.cs", new ArrayList(), ScriptType.csharp);
		native.call("SetCwd", args);
	}

	public inline static function getEnv(s:String):String {
		return OSService.getEnvironment(s);
	}

	public inline static function putEnv(s:String, v:Null<String>):Void {
		if (v == null)
			return OSService.unsetEnvironment(s);
		OSService.setEnvironment(s, v);
	}

	public inline static function setTimeLocale(loc:String):Bool {
		// TODO Verify
		return lua.Os.setlocale(loc) != null;
	}

	public static function sleep(seconds:Float):Void {
		//lua.lib.luv.Thread.sleep(Math.floor(seconds * 1000));
	}

	public inline static function stderr():haxe.io.Output
		return @:privateAccess new FileOutput(Io.stderr);

	public inline static function stdin():haxe.io.Input
		return @:privateAccess new FileInput(Io.stdin);

	public inline static function stdout():haxe.io.Output
		return @:privateAccess new FileOutput(Io.stdout);

	public static function time():Float {
		return 0;
		//var stamp = lua.lib.luv.Misc.gettimeofday();
		//return stamp.seconds + (stamp.microseconds / 1000000);
	}
}
