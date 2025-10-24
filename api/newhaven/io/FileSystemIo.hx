package newhaven.io;
import newhaven.core.native.NativeReference;
import newhaven.core.ArrayList;
import newhaven.core.native.ScriptType;

class FileSystemIo extends SystemIoBase {
	public function new(?native: NativeReference) {
		super();
		if (native == null) {
			var createScript = new NativeReference('res://Engine/IoSystem.gd', new ArrayList(), ScriptType.gdscript);
			native = createScript.call("create_file_system_io", new ArrayList());
		}
		this.native = native;
	}

	public var path(get, set): String;
	function get_path():String {
		return native.get("Path");
	}
	function set_path(value:String):String {
		native.set("Path", value);
		return value;
	}

	public function open(path: String, pathUrl: String) {
		var args = new ArrayList();
		args.append(path);
		args.append(pathUrl);
		native.call("Open", args);
	}
}
