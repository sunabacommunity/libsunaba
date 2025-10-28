package sunaba;

import sunaba.io.IoInterface;
import sunaba.core.Variant;
import sunaba.core.Dictionary;
import sunaba.core.native.NativeObject;
import sunaba.io.IoManager;
import sunaba.core.native.NativeReference;

abstract class ScriptableObject extends BaseClass {
	public var path: String = "";

	public var io: IoInterface;

	public function getData() : Dictionary {
		var data = new Dictionary();
		data.set("path", path);
		return data;
	}

	public function setData(data: Dictionary) : Void {
		path = data.get("path");
	}

	public function load(?path: String): Void {
		if (path == null) {
			path = this.path;
		}
		var variant: Variant = io.loadText(path);
		setData(JSON.parseString(variant));
	}

	public function save(?path: String) {
		if (path == null) {
			path = this.path;
		}
		var variant = getData();
		var json = JSON.stringify(variant, "  ");
		io.saveText(path, json);
	}

	public function new() {
		var ioObject: NativeReference = untyped __lua__("_G.__ioManager");
		io = new IoManager(ioObject);
	}
}
