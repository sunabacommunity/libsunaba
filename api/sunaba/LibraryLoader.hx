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
	private var _env: Table<Dynamic, Dynamic>;

	public var env(get, default): Table<Dynamic, Dynamic>;
	function get_env():Table<Dynamic, Dynamic> {
		return _env;
	}


	public var io: IoInterface;

	public var libraryName: String = "library";

	public function new() {
		_env = Table.create();
		var globalEnv: Table<Dynamic, Dynamic> = untyped __lua__("_G");
		Lua.setmetatable(_env, globalEnv);
		var ioNative: NativeReference = untyped __lua__("_G.__ioManager");
		io = new IoManager(ioNative);
	}

	public function loadLibrary(path: String): Void {
		var env = this._env;
		var code = io.loadText(path);
		var libName = this.libraryName;
		untyped __lua__("assert(load(code, libname, 't', env))");
	}
}
