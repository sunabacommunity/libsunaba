package sunaba.io;
import sunaba.core.ArrayList;

class SystemIoBase extends IoInterface {
	public function getFileUrl(path: String): String {
		var args = new ArrayList();
		args.append(path);
		return native.call("GetFileUrl", args);
	}
}
