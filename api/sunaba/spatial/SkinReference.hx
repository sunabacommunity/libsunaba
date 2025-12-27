package sunaba.spatial;

import sunaba.core.ArrayList;
import sunaba.core.Variant;
import sunaba.core.native.NativeReference;
import sunaba.core.Reference;

class SkinReference extends Reference {
    public override function nativeInit(?_native:NativeReference) {
        if (_native == null) {
            _native = new NativeReference("SkinReference");
        }
        native = _native;
    }

    public function getSkeleton(): Variant {
        var args = new ArrayList();
        return native.call("get_skeleton", args);
    }

    public function getSkin(): Skin {
        var args = new ArrayList();
        return new Skin(native.call("get_skin", args));
    }
}