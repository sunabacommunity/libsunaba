package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector3;
import sunaba.core.Signal;

class BoxOccluder3D extends Occluder3D {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('BoxOccluder3D');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['BoxOccluder3D', native];
        scriptLoader.call('loadScript', args);
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
