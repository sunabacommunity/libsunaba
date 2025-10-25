package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.TypedArray;
import sunaba.core.Vector3;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class ArrayOccluder3D extends Occluder3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ArrayOccluder3D');
        }
        native = _native;
    }

    public var indices(get, set): TypedArray<Int>;
    function get_indices(): TypedArray<Int> {
        return native.get('indices');
    }
    function set_indices(value: TypedArray<Int>): TypedArray<Int> {
      native.set('indices', value);
        return value;
    }
    public var vertices(get, set): TypedArray<Vector3>;
    function get_vertices(): TypedArray<Vector3> {
        return native.get('vertices');
    }
    function set_vertices(value: TypedArray<Vector3>): TypedArray<Vector3> {
      native.set('vertices', value);
        return value;
    }


  public function setArrays(vertices: TypedArray<Vector3>, indices: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(vertices);
      args.append(indices);
      native.call('set_arrays', args);
  }
}
