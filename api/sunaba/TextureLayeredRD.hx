package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class TextureLayeredRD extends TextureLayered {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('TextureLayeredRD');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['TextureLayeredRD', native];
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
