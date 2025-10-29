package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Resource;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.TypedArray;
import sunaba.core.Vector3;

class Occluder3D extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Occluder3D');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Occluder3D', native];
        scriptLoader.call('loadScript', args);
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
