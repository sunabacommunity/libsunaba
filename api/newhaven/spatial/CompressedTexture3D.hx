package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class CompressedTexture3D extends Texture3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CompressedTexture3D');
        }
        native = _native;
    }

    public var loadPath(get, set): String;
    function get_loadPath(): String {
        return native.get('load_path');
    }
    function set_loadPath(value: String): String {
      native.set('load_path', value);
        return value;
    }


  public function load(path: String): Int {
      var args = new ArrayList();
      args.append(path);
      return native.call('load', args);
  }
}
