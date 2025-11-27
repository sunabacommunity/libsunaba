package sunaba.core;

import sunaba.BaseClass;
import sunaba.core.native.NativeObject;
import Type;

class Object extends BaseClass {
    public var native: NativeObject = null;

    public function new(?native: NativeObject) {
        nativeInit(native);
		if (native.isNull()) {
			throw "Invalid Object Handle";
		}
    }

	public function nativeInit(?_native: NativeObject) {
		if (_native == null) {
			_native = new NativeObject('Object');
		}
		this.native = _native;
	}

    public function isNull() {
		if (native == null) return true;
        return native.isNull();
    }

    private var freed: Bool = false;
    public function onFree() {}

    public function free() {
        if (!freed) {
            native.free();
            native = null;
        }
        else {
            throw "Object already freed";
        }
    }

	@:generic
	public static function castTo<T>(obj: Object, type: Class<T>): T {
		return Type.createInstance(type, [obj.native]);
	}
}
