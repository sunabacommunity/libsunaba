package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector3;

class BoxOccluder3D extends Occluder3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('BoxOccluder3D');
        }
        native = _native;
    }

    public var size(get, set): Vector3;
    function get_size(): Vector3 {
        return native.get('size');
    }
    function set_size(value: Vector3): Vector3 {
      native.set('size', value);
        return value;
    }

}
