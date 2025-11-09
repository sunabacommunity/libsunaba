package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class Texture3DRD extends Texture3D {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('Texture3DRD');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Texture3DRD', native];
        scriptLoader.call('loadScript', args);
    }

    public var textureRdRid(get, set): Int;
    function get_textureRdRid(): Int {
        return native.get('texture_rd_rid');
    }
    function set_textureRdRid(value: Int): Int {
      native.set('texture_rd_rid', value);
        return value;
    }


}
