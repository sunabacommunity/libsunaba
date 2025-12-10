package sunaba;

import sunaba.io.IoInterface;
import sunaba.core.Variant;
import sunaba.core.Dictionary;
import sunaba.core.native.NativeObject;
import sunaba.io.IoManager;
import sunaba.core.native.NativeReference;
import sunaba.io.DataFileType;

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
		setData(io.loadData(path));
	}

	public function save(?path: String, fileType: DataFileType = DataFileType.json) {
		if (path == null) {
			path = this.path;
		}
		var data = getData();
		io.saveData(path, data, fileType);
	}

	public function new() {
		var ioObject: NativeReference = untyped __lua__("_G.__ioManager");
		io = new IoManager(ioObject);
	}
}
