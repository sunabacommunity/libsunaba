package sunaba;

import sunaba.BaseClass;
import sunaba.core.Variant;
import sunaba.core.native.NativeObject;
import sunaba.Node;
import sunaba.io.IoManager;
import sunaba.core.native.NativeReference;

class App extends BaseClass {
    public var rootNodeNative(get, default): NativeObject;
	private function get_rootNodeNative(): NativeObject {
		return untyped __lua__("_G.__rootNode");
	}

	public var rootNode(get, default): Node;
	function get_rootNode(): Node {
		return new Node(rootNodeNative);
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
        try {
			init();
        }
        catch(e) {
            Debug.error(e.toString());
        }
    }

    public function init() {

    }

    public static function exit() {
        untyped __lua__("_G.exit()");
    }
}
