package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class CompressedTexture3D extends Texture3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CompressedTexture3D');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['CompressedTexture3D', native];
        scriptLoader.call('loadScript', args);
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
