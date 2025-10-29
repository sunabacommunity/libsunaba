package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector2i;
import sunaba.core.Signal;

class PlaceholderTextureLayered extends TextureLayered {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PlaceholderTextureLayered');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['PlaceholderTextureLayered', native];
        scriptLoader.call('loadScript', args);
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
