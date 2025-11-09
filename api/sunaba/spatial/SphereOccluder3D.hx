package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class SphereOccluder3D extends Occluder3D {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('SphereOccluder3D');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['SphereOccluder3D', native];
        scriptLoader.call('loadScript', args);
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
