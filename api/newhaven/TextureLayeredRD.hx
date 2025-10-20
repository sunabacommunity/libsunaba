package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class TextureLayeredRD extends TextureLayered {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('TextureLayeredRD');
        }
        native = _native;
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
