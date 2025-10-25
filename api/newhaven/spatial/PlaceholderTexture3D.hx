package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Vector3i;
import sunaba.core.Signal;

class PlaceholderTexture3D extends Texture3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PlaceholderTexture3D');
        }
        native = _native;
    }

    public var size(get, set): Vector3i;
    function get_size(): Vector3i {
        return native.get('size');
    }
    function set_size(value: Vector3i): Vector3i {
      native.set('size', value);
        return value;
    }


}
