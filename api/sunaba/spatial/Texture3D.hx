package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Texture;
import sunaba.core.Signal;
import sunaba.Resource;

class Texture3D extends Texture {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Texture3D');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Texture3D', native];
        scriptLoader.call('loadScript', args);
    }



  public function createPlaceholder(): Resource {
      var args = new ArrayList();
      var ref: NativeReference = native.call('create_placeholder', args);
      return new Resource(ref);
  }
  public function getDepth(): Int {
      var args = new ArrayList();
      return native.call('get_depth', args);
  }
  public function getFormat(): Int {
      var args = new ArrayList();
      return native.call('get_format', args);
  }
  public function getHeight(): Int {
      var args = new ArrayList();
      return native.call('get_height', args);
  }
  public function getWidth(): Int {
      var args = new ArrayList();
      return native.call('get_width', args);
  }
  public function hasMipmaps(): Bool {
      var args = new ArrayList();
      return native.call('has_mipmaps', args);
  }
}
