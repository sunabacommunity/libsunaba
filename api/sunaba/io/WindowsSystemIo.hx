package sunaba.io;
import sunaba.core.native.NativeReference;
import sunaba.core.native.ScriptType;
import sunaba.core.ArrayList;

class WindowsSystemIo extends SystemIoBase {
	public override function nativeInit(?_native: NativeObject) {
		if (native == null) {
			var createScript = new NativeReference('res://Engine/IoSystem.gd', new ArrayList(), ScriptType.gdscript);
			native = createScript.call("create_windows_system_io", new ArrayList());
		}
		this.native = native;
	}
}
