package sunaba;

import lua.Table;
import lua.Lua;
import sunaba.io.IoInterface;
import sunaba.io.IoManager;
import sunaba.core.native.NativeReference;
import haxe.Exception;

@:multiReturn
extern class LibraryLoadResult {
	var chunk: Dynamic;
	var err: Exception;
}

class LibraryLoader extends BaseClass {
	private  var env: Table<Dynamic, Dynamic>;

	public var io: IoInterface;

	public var libraryName: String = "library";

	public function new() {
		env = Table.create();
		var globalEnv: Table<Dynamic, Dynamic> = untyped __lua__("_G");
		Lua.setmetatable(env, globalEnv);
		var ioNative: NativeReference = untyped __lua__("_G.__ioManager");
		io = new IoManager(ioNative);
	}

	public function loadLibrary(path: String): Void {
		var env = this.env;
		var code = io.loadText(path);
		var libName = this.libraryName;
		untyped __lua__("assert(load(code, libname, 't', env))");
	}
}
