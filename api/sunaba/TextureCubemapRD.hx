package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class TextureCubemapRD extends TextureLayeredRD {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('TextureCubemapRD');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['TextureCubemapRD', native];
        scriptLoader.call('loadScript', args);
    }



}
