package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.ArrayList;
import newhaven.core.TypedArray;
import newhaven.core.Vector3;

class Occluder3D extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Occluder3D');
        }
        native = _native;
    }


  public function getIndices(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('get_indices', args);
  }
  public function getVertices(): TypedArray<Vector3> {
      var args = new ArrayList();
      return native.call('get_vertices', args);
  }
}
