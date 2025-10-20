package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;
import newhaven.core.Vector2i;

class ImageTexture extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ImageTexture');
        }
        native = _native;
    }



  public static function createFromImage(image: Image): ImageTexture {
      var args = new ArrayList();
      args.append(image.native);
      var ref: NativeReference = NativeObject.callStatic('ImageTexture', 'create_from_image', args);
      return new ImageTexture(ref);
  }
  public function getFormat(): Int {
      var args = new ArrayList();
      return native.call('get_format', args);
  }
  public function setImage(image: Image): Void {
      var args = new ArrayList();
      args.append(image.native);
      native.call('set_image', args);
  }
  public function setSizeOverride(size: Vector2i): Void {
      var args = new ArrayList();
      args.append(size);
      native.call('set_size_override', args);
  }
  public function update(image: Image): Void {
      var args = new ArrayList();
      args.append(image.native);
      native.call('update', args);
  }
}
