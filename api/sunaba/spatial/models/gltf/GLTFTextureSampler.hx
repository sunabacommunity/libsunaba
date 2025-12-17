package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;

class GLTFTextureSampler extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFTextureSampler');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFTextureSampler', native];
        scriptLoader.call('loadScript', args);
    }

    public var magFilter(get, set): Int;
    function get_magFilter(): Int {
        return native.get('mag_filter');
    }
    function set_magFilter(value: Int): Int {
      native.set('mag_filter', value);
        return value;
    }
    public var minFilter(get, set): Int;
    function get_minFilter(): Int {
        return native.get('min_filter');
    }
    function set_minFilter(value: Int): Int {
      native.set('min_filter', value);
        return value;
    }
    public var wrapS(get, set): Int;
    function get_wrapS(): Int {
        return native.get('wrap_s');
    }
    function set_wrapS(value: Int): Int {
      native.set('wrap_s', value);
        return value;
    }
    public var wrapT(get, set): Int;
    function get_wrapT(): Int {
        return native.get('wrap_t');
    }
    function set_wrapT(value: Int): Int {
      native.set('wrap_t', value);
        return value;
    }


}
