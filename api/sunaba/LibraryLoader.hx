package sunaba;

import lua.Table;
import lua.Lua;
import sunaba.io.IoInterface;
import sunaba.io.IoManager;
import sunaba.core.native.NativeReference;
import haxe.Exception;
import sys.FileSystem;
import sys.io.File;

class LibraryLoadResult {
	public var chunk: ()->Void;
	public var err: String;
	public function new(chunk: Dynamic, err: String) {
		this.chunk = chunk;
		this.err = err;
	}
}

class LibraryLoader extends BaseClass {
	private var _env: Table<Dynamic, Dynamic>;

	public var env(get, default): Table<Dynamic, Dynamic>;
	function get_env():Table<Dynamic, Dynamic> {
		return _env;
	}


	public var io: IoInterface;

	public var libraryName: String = "library";

	private var chunk: ()-> Void;

	public function new() {
		_env = Table.create();
		var globalEnv: Table<Dynamic, Dynamic> = untyped __lua__("_G");
		untyped __lua__("
			for key, value in pairs(_G) do
				self._env[key] = value
			end
		");
		var ioNative: NativeReference = untyped __lua__("_G.__ioManager");
		io = new IoManager(ioNative);
	}

	public function loadLibrary(path: String): Void {
		var env = this._env;
		var code: String = io.loadText(path);

		untyped __lua__("
        	local chunk = _G.loadstring(code)
			setfenv(chunk, env)
			chunk()
    	");

		this.chunk = untyped __lua__("chunk");
	}


	public function loadLibraryFileSystem(path: String): Void {
		var env = this._env;
		var code: String = File.getContent(path);
		var libName = this.libraryName;

		untyped __lua__("
        	local chunk = _G.loadstring(code)
			setfenv(chunk, env)
			chunk()
    	");

		this.chunk = untyped __lua__("chunk");
	}

	public function main() {
		chunk();
	}
}
