package newhaven.io;
import newhaven.core.native.ScriptType;
import newhaven.core.ArrayList;
import newhaven.core.native.NativeReference;

class UnixSystemIo extends SystemIoBase {
	public function new(?native: NativeReference) {
		super();
		if (native == null) {
			var createScript = new NativeReference('res://Engine/IoSystem.gd', new ArrayList(), ScriptType.gdscript);
			native = createScript.call("create_unix_system_io", new ArrayList());
		}
		this.native = native;
	}
}
