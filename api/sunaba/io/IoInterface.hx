package sunaba.io;
import sunaba.core.Reference;
import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.ArrayList;
import sunaba.core.ByteArray;
import sunaba.core.native.ScriptType;
import sunaba.core.Dictionary;
import sunaba.core.VariantNative;

class IoInterface extends Reference {
	public override function nativeInit(?native: NativeReference) {
		if (native == null) {
			return;
		}
		this.native = native;
	}

	public var pathUrl(get, set): String;
	function get_pathUrl():String {
		return native.get("PathUrl");
	}
	function set_pathUrl(value:String):String {
		native.set("PathUrl", value);
		return value;
	}

	public function getFilePath(path: String): String {
		var args = new ArrayList();
		args.append(path);
		return native.call("GetFilePath", args);
	}

	public function loadText(path: String): String {
		var args = new ArrayList();
		args.append(path);
		return native.call("LoadText", args);
	}

	public function saveText(path: String, text: String) {
		var args = new ArrayList();
		args.append(path);
		args.append(text);
		return native.call("SaveText", args);
	}

	public function loadBytes(path: String): ByteArray {
		var args = new ArrayList();
		args.append(path);
		return native.call("LoadBytes", args);
	}

	public function saveBytes(path: String, bytes: ByteArray) {
		var args = new ArrayList();
		args.append(path);
		args.append(bytes);
		return native.call("SaveBytes", args);
	}

	public function getFileListAll(extension: String = "", recursive: Bool = true): ArrayList {
		var args = new ArrayList();
		args.append(extension);
		args.append(recursive);
		return native.call("GetFileListAll", args);
	}

	public function getFileList(path: String, extension: String = "", recursive: Bool = true): ArrayList {
		var args = new ArrayList();
		args.append(path);
		args.append(extension);
		args.append(recursive);
		return native.call("GetFileList", args);
	}

	public function fileExists(path: String): Bool {
		var args = new ArrayList();
		args.append(path);
		return native.call("FileExists", args);
	}

	public function moveFile(source: String, dest: String) {
		var args = new ArrayList();
		args.append(source);
		args.append(dest);
		native.call("MoveFile", args);
	}

	public function createDirectory(path: String): Int {
		var args = new ArrayList();
		args.append(path);
		return native.call("CreateDirectory", args);
	}

	public function deleteDirctory(path: String) {
		var args = new ArrayList();
		args.append(path);
		native.call("DeleteDirectory", args);
	}

	public function directoryExists(path: String): Bool {
		var args = new ArrayList();
		args.append(path);
		return native.call("DirectoryExists", args);
	}

	public function getTempFilename(): String {
		return native.call("GetTempFilename", new ArrayList());
	}

	public inline function loadData(path: String): Dictionary {
		var msgpackPath = path;
		if (!StringTools.endsWith(path, ".msgpack") && !StringTools.endsWith(path, ".dat"))
			msgpackPath += ".dat";

		if (fileExists((msgpackPath))) {
			var bytes = loadBytes(msgpackPath);

			var script = new NativeReference("res://Engine/MessagePack.gd", new ArrayList(), ScriptType.gdscript);
			var args = new ArrayList();
			args.append(bytes);
			var result: Dictionary = script.call("decode", args);
			return result.get("value");
		}
		else if (fileExists(path)) {
			var json = loadText(path);
			return JSON.parseString(json);
		}
		else {
			throw "Data file not found";
		}
	}

	public inline function saveData(path: String, data: Dictionary, fileType: DataFileType = DataFileType.json) {
		if (fileType == DataFileType.json) {
			var json = JSON.stringify(data);
			saveText(path, json);
		}
		else if (fileType == DataFileType.msgPack || StringTools.endsWith(path, ".dat") || StringTools.endsWith(path, ".msgpack")) {
			var msgpackPath = path;
			if (!StringTools.endsWith(path, ".msgpack") && !StringTools.endsWith(path, ".dat"))
				msgpackPath += ".dat";

			var script = new NativeReference("res://Engine/MessagePack.gd", new ArrayList(), ScriptType.gdscript);
			var args = new ArrayList();
			args.append(data);
			var bytes: ByteArray = script.call("encode", args);

			saveBytes(msgpackPath, bytes);
		}
	}
}
