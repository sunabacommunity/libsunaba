package newhaven.io;
import newhaven.core.native.ScriptType;
import newhaven.core.ArrayList;
import newhaven.core.native.NativeReference;
import newhaven.core.ByteArray;

class IoInterfaceZip extends IoInterface {
	public function new(?native: NativeReference) {
		super();
		if (native == null) {
			var createScript = new NativeReference('res://Engine/IoBase.gd', new ArrayList(), ScriptType.gdscript);
			native = createScript.call("create_io_interface_zip", new ArrayList());
		}
		this.native = native;
	}

	public function loadFromPath(path: String, pathUrl: String) {
		var args = new ArrayList();
		args.append(path);
		args.append(pathUrl);
		native.call("LoadFromPath", args);
	}

	public function loadFromBytes(bytes: ByteArray, pathUrl: String) {
		var args = new ArrayList();
		args.append(bytes);
		args.append(pathUrl);
		native.call("LoadFromBytes", args);
	}

	public function sanitizePath(path: String): String {
		var args = new ArrayList();
		args.append(path);
		return native.call("GetFileUrl", args);
	}
}
