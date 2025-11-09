package sunaba.io;
import sunaba.core.native.ScriptType;
import sunaba.core.ArrayList;
import sunaba.core.native.NativeReference;

class UnixSystemIo extends SystemIoBase {
	public override function nativeInit(?_native: NativeReference) {
		if (native == null) {
			var createScript = new NativeReference('res://Engine/IoSystem.gd', new ArrayList(), ScriptType.gdscript);
			native = createScript.call("create_unix_system_io", new ArrayList());
		}
		this.native = native;
	}
}
