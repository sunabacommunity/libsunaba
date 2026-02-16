package sunaba;

import sunaba.BaseClass;
import sunaba.core.Variant;
import sunaba.core.native.NativeObject;
import sunaba.Node;
import sunaba.io.IoManager;
import sunaba.core.native.NativeReference;
import haxe.Exception;
import sunaba.core.ArrayList;
import sunaba.core.VariantNative;
import sunaba.core.VariantNative.VariantNative.fromBaseClass;
import sunaba.core.native.ScriptType;

class App extends BaseClass {
    public var rootNodeNative(get, default): NativeObject;
	private function get_rootNodeNative(): NativeObject {
		return untyped __lua__("_G.__rootNode");
	}

	public var rootNode(get, default): Node;
	function get_rootNode(): Node {
		return new Node(untyped __lua__("_G.__rootNode"));
	}

	public var io(get, default): IoManager;
	function get_io():IoManager {
		var native: NativeReference = untyped __lua__("_G.__ioManager");
		return new IoManager(native);
	}

	public static var execDir(get, default): String;
    private static function get_execDir(): String {
        return untyped __lua__("_G.execDir");
    }

    public static var resDir(get, default): String;
    private static function get_resDir(): String {
        return untyped __lua__("_G.resDir");
    }

    public static var shareDir(get, default): String;
    private static function get_shareDir(): String {
        return untyped __lua__("_G.shareDir");
    }

    public function new() {
		var proxy = new NativeObject("res://Engine/NodeProxy.gd", new ArrayList(), ScriptType.gdscript);
		proxy.set("instance", VariantNative.fromBaseClass(this));
		var args = new ArrayList();
		args.append(proxy);
		proxy.set("name", "Proxy");
		rootNode.native.call("add_child", args);
        try {
			init();
        }
		catch (e: Exception) {
			trace(e.message + " -> " + e.stack);
			Debug.error(e.message + " -> " + e.stack);
		}
    }

	public static function loadlib(path: String): String {
		var __rootNode: NativeObject = untyped __lua__("_G.__rootNode");
		var args = new ArrayList();
		args.append(path);
		var res: String = __rootNode.call("load_library", args);
		if (res == "") {
			throw "Failed to load library - " + path;
		}
		return res;
	}

    public function init() {

    }

    public static function exit(code: Int = 0) {
        untyped __lua__("_G.__exit(code)");
    }
}
