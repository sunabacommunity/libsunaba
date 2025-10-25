package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class SphereOccluder3D extends Occluder3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('SphereOccluder3D');
        }
        native = _native;
    }

    public var radius(get, set): Float;
    function get_radius(): Float {
        return native.get('radius');
    }
    function set_radius(value: Float): Float {
      native.set('radius', value);
        return value;
    }


}
