package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class TextureLayered extends Texture {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('TextureLayered');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['TextureLayered', native];
        scriptLoader.call('loadScript', args);
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
