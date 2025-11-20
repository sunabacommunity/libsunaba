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
	public var chunk: Dynamic;
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

	public var res: LibraryLoadResult = null;

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
		var libName: String = this.libraryName;

		untyped __lua__("
        local __chunk, __err = load(code, libName, 't', env)
        rawset(_G, '__sunaba_chunk', __chunk)
        rawset(_G, '__sunaba_err', __err)
    ");

		var chunk: Dynamic = untyped __lua__("_G.__sunaba_chunk");
		var err   : Dynamic = untyped __lua__("_G.__sunaba_err");

		untyped __lua__("_G.__sunaba_chunk = nil");
		untyped __lua__("_G.__sunaba_err = nil");

		res = new LibraryLoadResult(chunk, err);
	}


	public function loadLibraryFileSystem(path: String): Void {
		var env = this._env;
		var code: String = File.getContent(path);
		var libName = this.libraryName;

		untyped __lua__("
        local __chunk, __err = load(code, libName, 't', env)
        rawset(_G, '__sunaba_chunk', __chunk)
        rawset(_G, '__sunaba_err', __err)
    ");

		var chunk: Dynamic = untyped __lua__("_G.__sunaba_chunk");
		var err   : Dynamic = untyped __lua__("_G.__sunaba_err");

		untyped __lua__("_G.__sunaba_chunk = nil");
		untyped __lua__("_G.__sunaba_err = nil");

		res = new LibraryLoadResult(chunk, err);
	}

}
