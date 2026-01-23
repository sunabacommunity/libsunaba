package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.PlaceholderTextureLayered;
import sunaba.core.Signal;

class PlaceholderCubemapArray extends PlaceholderTextureLayered {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('PlaceholderCubemapArray');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['PlaceholderCubemapArray', native];
        scriptLoader.call('loadScript', args);
    }



}
