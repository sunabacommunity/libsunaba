package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector3i;

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
