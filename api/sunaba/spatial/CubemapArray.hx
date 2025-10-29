package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.ImageTextureLayered;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.Resource;

class CubemapArray extends ImageTextureLayered {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CubemapArray');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['CubemapArray', native];
        scriptLoader.call('loadScript', args);
    }



  public function createPlaceholder(): Resource {
      var args = new ArrayList();
      var ref: NativeReference = native.call('create_placeholder', args);
      return new Resource(ref);
  }
}
