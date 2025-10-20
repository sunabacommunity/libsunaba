package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;
import newhaven.core.Vector3;

class Noise extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Noise');
        }
        native = _native;
    }


  public function getImage(width: Int, height: Int, ?invert: Bool, ?in3dSpace: Bool, ?normalize: Bool): Image {
      var args = new ArrayList();
      args.append(width);
      args.append(height);
      if (invert != null) {
          args.append(invert);
      }
      if (in3dSpace != null) {
          args.append(in3dSpace);
      }
      if (normalize != null) {
          args.append(normalize);
      }
      var ref: NativeReference = native.call('get_image', args);
      return new Image(ref);
  }
  public function getNoise1d(x: Float): Float {
      var args = new ArrayList();
      args.append(x);
      return native.call('get_noise_1d', args);
  }
  public function getNoise2d(x: Float, y: Float): Float {
      var args = new ArrayList();
      args.append(x);
      args.append(y);
      return native.call('get_noise_2d', args);
  }
  public function getNoise2Dv(v: Vector2): Float {
      var args = new ArrayList();
      args.append(v);
      return native.call('get_noise_2dv', args);
  }
  public function getNoise3d(x: Float, y: Float, z: Float): Float {
      var args = new ArrayList();
      args.append(x);
      args.append(y);
      args.append(z);
      return native.call('get_noise_3d', args);
  }
  public function getNoise3Dv(v: Vector3): Float {
      var args = new ArrayList();
      args.append(v);
      return native.call('get_noise_3dv', args);
  }
  public function getSeamlessImage(width: Int, height: Int, ?invert: Bool, ?in3dSpace: Bool, ?skirt: Float, ?normalize: Bool): Image {
      var args = new ArrayList();
      args.append(width);
      args.append(height);
      if (invert != null) {
          args.append(invert);
      }
      if (in3dSpace != null) {
          args.append(in3dSpace);
      }
      if (skirt != null) {
          args.append(skirt);
      }
      if (normalize != null) {
          args.append(normalize);
      }
      var ref: NativeReference = native.call('get_seamless_image', args);
      return new Image(ref);
  }
}
