package newhaven;

import newhaven.BaseClass;
import newhaven.core.Variant;
import newhaven.core.native.NativeObject;

class App extends BaseClass {
    public var rootNodeNative(get, default): NativeObject;
	private function get_rootNodeNative(): NativeObject {
		return untyped __lua__("_G.__rootNode");
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
