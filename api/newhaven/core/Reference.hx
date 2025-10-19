package newhaven.core;

import newhaven.BaseClass;
import newhaven.core.native.NativeReference;

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

    public function isValid() {
        return native.isValid();
    }
}
