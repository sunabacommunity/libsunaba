package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.TypedArray;
import sunaba.core.Signal;

class PolygonOccluder3D extends Occluder3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PolygonOccluder3D');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['PolygonOccluder3D', native];
        scriptLoader.call('loadScript', args);
    }

    public var polygon(get, set): TypedArray<Vector2>;
    function get_polygon(): TypedArray<Vector2> {
        return native.get('polygon');
    }
    function set_polygon(value: TypedArray<Vector2>): TypedArray<Vector2> {
      native.set('polygon', value);
        return value;
    }


}
