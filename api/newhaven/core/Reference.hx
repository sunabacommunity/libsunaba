package sunaba.core;

import sunaba.BaseClass;
import sunaba.core.native.NativeReference;
import Type;

class Reference extends BaseClass {
    public var native: NativeReference;

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

	@:generic
	public static function castTo<T>(ref: Reference, type: Class<T>): T {
		return Type.createInstance(type, [ref.native]);
	}
}
