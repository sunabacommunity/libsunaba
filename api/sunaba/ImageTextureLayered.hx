package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class ImageTextureLayered extends TextureLayered {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ImageTextureLayered');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['ImageTextureLayered', native];
        scriptLoader.call('loadScript', args);
    }



  public function createFromImages(images: Variant): Int {
      var args = new ArrayList();
      args.append(images);
      return native.call('create_from_images', args);
  }
  public function updateLayer(image: Image, layer: Int): Void {
      var args = new ArrayList();
      args.append(image.native);
      args.append(layer);
      native.call('update_layer', args);
  }
}
