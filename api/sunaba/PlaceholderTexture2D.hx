package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Vector2;
import sunaba.core.Signal;

class PlaceholderTexture2D extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PlaceholderTexture2D');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['PlaceholderTexture2D', native];
        scriptLoader.call('loadScript', args);
    }

    public var size(get, set): Vector2;
    function get_size(): Vector2 {
        return native.get('size');
    }
    function set_size(value: Vector2): Vector2 {
      native.set('size', value);
        return value;
    }


}
