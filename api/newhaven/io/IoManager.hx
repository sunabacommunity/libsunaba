package newhaven.io;
import newhaven.core.native.ScriptType;
import newhaven.core.ArrayList;
import newhaven.core.native.NativeReference;

class IoManager extends IoInterface {
	public function new(?native: NativeReference) {
		super();
		if (native == null) {
			var createScript = new NativeReference('res://Engine/IoBase.gd', new ArrayList(), ScriptType.gdscript);
			native = createScript.call("create_io_manager", new ArrayList());
		}
		this.native = native;
	}

	public function getFileUrl(path: String): String {
		var args = new ArrayList();
		args.append(path);
		return native.call("GetFileUrl", args);
	}

	public function register(ioInterface: IoInterface) {
		var args = new ArrayList();
		args.append(ioInterface.native);
		native.call("Register", args);
	}

	public function unregister(ioInterface: IoInterface) {
		var args = new ArrayList();
		args.append(ioInterface.native);
		native.call("Unregister", args);
	}
}
