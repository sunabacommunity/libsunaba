package newhaven.core;

import newhaven.BaseClass;
import newhaven.core.native.NativeObject;

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
}
