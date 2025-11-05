package sunaba;
import sunaba.core.native.NativeObject;
import sunaba.core.native.ScriptType;
import sunaba.core.ArrayList;

class DesktopAppView extends AppView {
	public function new(?_native: NativeObject) {
		super();
		if (_native == null) {
			_native = new NativeObject("res://Engine/DesktopApp.gd", new ArrayList(), ScriptType.gdscript);
		}
		native = _native;
	}
}
