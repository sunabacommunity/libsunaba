package newhaven.core;

import newhaven.BaseClass;
import newhaven.core.native.NativeObject;
import Type;

class Object extends BaseClass {
    public var native: NativeObject;

    public function new(?native: NativeObject) {
        if (native == null) {
            native = new NativeObject('Object');
        }
        this.native = native;
    }

    public function isNull() {
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
