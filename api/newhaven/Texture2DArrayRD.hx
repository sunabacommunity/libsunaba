package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class Texture2DArrayRD extends TextureLayeredRD {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Texture2DArrayRD');
        }
        native = _native;
    }



}
