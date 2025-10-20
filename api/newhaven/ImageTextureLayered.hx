package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class ImageTextureLayered extends TextureLayered {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ImageTextureLayered');
        }
        native = _native;
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
