package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Vector2;
import sunaba.core.Signal;

class MeshTexture extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('MeshTexture');
        }
        native = _native;
    }

    public var baseTexture(get, set): Texture2D;
    function get_baseTexture(): Texture2D {
        var ref: NativeReference = native.get('base_texture');
        return new Texture2D(ref);
    }
    function set_baseTexture(value: Texture2D): Texture2D {
      native.set('base_texture', value.native);
        return value;
    }
    public var imageSize(get, set): Vector2;
    function get_imageSize(): Vector2 {
        return native.get('image_size');
    }
    function set_imageSize(value: Vector2): Vector2 {
      native.set('image_size', value);
        return value;
    }


}
