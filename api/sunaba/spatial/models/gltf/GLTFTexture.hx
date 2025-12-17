package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;

class GLTFTexture extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFTexture');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFTexture', native];
        scriptLoader.call('loadScript', args);
    }

    public var sampler(get, set): Int;
    function get_sampler(): Int {
        return native.get('sampler');
    }
    function set_sampler(value: Int): Int {
      native.set('sampler', value);
        return value;
    }
    public var srcImage(get, set): Int;
    function get_srcImage(): Int {
        return native.get('src_image');
    }
    function set_srcImage(value: Int): Int {
      native.set('src_image', value);
        return value;
    }


}
