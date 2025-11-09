package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class ImageTexture3D extends Texture3D {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImageTexture3D');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['ImageTexture3D', native];
        scriptLoader.call('loadScript', args);
    }



  public function create(format: Int, width: Int, height: Int, depth: Int, useMipmaps: Bool, data: Variant): Int {
      var args = new ArrayList();
      args.append(format);
      args.append(width);
      args.append(height);
      args.append(depth);
      args.append(useMipmaps);
      args.append(data);
      return native.call('create', args);
  }
  public function update(data: Variant): Void {
      var args = new ArrayList();
      args.append(data);
      native.call('update', args);
  }
}
