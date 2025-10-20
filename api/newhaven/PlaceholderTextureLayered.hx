package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector2i;

class PlaceholderTextureLayered extends TextureLayered {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PlaceholderTextureLayered');
        }
        native = _native;
    }

    public var layers(get, set): Int;
    function get_layers(): Int {
        return native.get('layers');
    }
    function set_layers(value: Int): Int {
      native.set('layers', value);
        return value;
    }
    public var size(get, set): Vector2i;
    function get_size(): Vector2i {
        return native.get('size');
    }
    function set_size(value: Vector2i): Vector2i {
      native.set('size', value);
        return value;
    }

}
