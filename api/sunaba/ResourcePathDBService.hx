package sunaba;
import sunaba.core.native.NativeObject;
import sunaba.core.native.NativeReference;
import sunaba.core.Variant;

class ResourcePathDBService extends BaseClass{
	private static var _node: NativeObject = null;
	public static function getNode() {
		if (_node == null) {
			var rootNode = new Node(untyped __lua__("_G.__rootNode"));
			_node = rootNode.getNode("/root/ResourcePathDB").native;
		}
		return _node;
	}

	public static function getResourcePathNative(res: NativeReference): String {
		if (!res.isClass("Resource")) return "";
		var args: Array<Variant> = [res];
		return getNode().call("get_res_path", args);
	}

	public static function setResourcePathNative(res: NativeReference, path: String) {
		if (!res.isClass("Resource")) return;
		var args: Array<Variant> = [res, path];
		getNode().call("set_res_path", args);
	}

	public static function hasResourcePathNative(res: NativeReference): Bool {
		if (!res.isClass("Resource")) return false;
		var args: Array<Variant> = [res];
		return getNode().call("get_res_path", args);
	}
}
