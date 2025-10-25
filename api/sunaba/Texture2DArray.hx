package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class Texture2DArray extends ImageTextureLayered {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Texture2DArray');
        }
        native = _native;
    }



  public function createPlaceholder(): Resource {
      var args = new ArrayList();
      var ref: NativeReference = native.call('create_placeholder', args);
      return new Resource(ref);
  }
}
