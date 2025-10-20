package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class PlaceholderTexture2DArray extends PlaceholderTextureLayered {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PlaceholderTexture2DArray');
        }
        native = _native;
    }


}
