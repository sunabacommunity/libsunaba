package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector2;
import newhaven.core.Signal;

class PlaceholderTexture2D extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PlaceholderTexture2D');
        }
        native = _native;
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
