package newhaven.io;
import newhaven.core.native.NativeReference;
import newhaven.core.native.ScriptType;
import newhaven.core.ArrayList;

class WindowsSystemIo extends SystemIoBase {
	public function new(?native: NativeReference) {
		super();
		if (native == null) {
			var createScript = new NativeReference('res://Engine/IoSystem.gd', new ArrayList(), ScriptType.gdscript);
			native = createScript.call("create_windows_system_io", new ArrayList());
		}
		this.native = native;
	}
}
