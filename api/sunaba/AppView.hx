package sunaba;
import sunaba.io.IoManager;
import sunaba.core.native.NativeObject;
import sunaba.core.ArrayList;
import sunaba.core.native.ScriptType;
import sunaba.core.TypedArray;


class AppView extends Runtime {
	public var ioManager(get, set): IoManager;
	function get_ioManager():IoManager {
		return new IoManager(native.get("io_manager"));
	}
	function set_ioManager(value:IoManager):IoManager {
		native.set("io_manager", value);
		return value;
	}

	public override function nativeInit(?_native: NativeObject) {
		if (_native == null) {
			_native = new NativeObject("res://Engine/App.gd", new ArrayList(), ScriptType.gdscript);
		}
		native = _native;
	}

	public function init(?sandboxed: Bool, ?classnames: TypedArray<String>): Void {
		var args = new ArrayList();
		if (sandboxed != null) {
			args.append(sandboxed);
		}
		if (classnames != null) {
			args.append(classnames);
		}
		native.call("init", args);
	}

	public function loadApp(path: String): Void {
		var args = new ArrayList();
		args.append(path);
		native.call("load_app", args);
	}

	public function loadLibrary(path: String): Void {
		var args = new ArrayList();
		args.append(path);
		native.call("load_library", args);
	}

	public function enableDebugging() {
		var args = new ArrayList();
		native.call("enable_debugging", args);
	}
}
