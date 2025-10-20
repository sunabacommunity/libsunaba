package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class Texture3DRD extends Texture3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Texture3DRD');
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
