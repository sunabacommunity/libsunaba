package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector2;
import newhaven.core.TypedArray;

class PolygonOccluder3D extends Occluder3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PolygonOccluder3D');
        }
        native = _native;
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
