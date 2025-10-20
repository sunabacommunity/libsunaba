package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

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
