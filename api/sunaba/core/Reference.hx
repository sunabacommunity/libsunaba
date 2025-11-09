package sunaba.core;

import sunaba.BaseClass;
import sunaba.core.native.NativeReference;
import Type;

class Reference extends BaseClass {
    public var native: NativeReference = null;

    public function new(?native: NativeReference) {
        if (native == null) {
            native = new NativeReference('RefCounted');
        }
        this.native = native;
    }

    public function isNull() {
        return native.isNull();
    }

    public function isObjectValid() {
        return native.isValid();
    }

	public var resPath(get, set): String;

	function get_resPath():String {
		return ResourcePathDBService.getResourcePathNative(native);
	}


	function set_resPath(value:String):String {
		ResourcePathDBService.setResourcePathNative(native, value);
		return value;
	}


	@:generic
	public static function castTo<T>(ref: Reference, type: Class<T>): T {
		return Type.createInstance(type, [ref.native]);
	}
}
