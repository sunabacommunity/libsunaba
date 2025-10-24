package newhaven.io;
import newhaven.core.Reference;
import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.ArrayList;
import newhaven.core.ByteArray;
import newhaven.core.native.ScriptType;

class IoInterface extends Reference {
	public function new(?native: NativeReference) {
		super();
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
}
