package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class TextureLayered extends Texture {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('TextureLayered');
        }
        native = _native;
    }



  public function getFormat(): Int {
      var args = new ArrayList();
      return native.call('get_format', args);
  }
  public function getHeight(): Int {
      var args = new ArrayList();
      return native.call('get_height', args);
  }
  public function getLayerData(layer: Int): Image {
      var args = new ArrayList();
      args.append(layer);
      var ref: NativeReference = native.call('get_layer_data', args);
      return new Image(ref);
  }
  public function getLayeredType(): Int {
      var args = new ArrayList();
      return native.call('get_layered_type', args);
  }
  public function getLayers(): Int {
      var args = new ArrayList();
      return native.call('get_layers', args);
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
