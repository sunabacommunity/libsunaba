package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class ViewportTexture extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ViewportTexture');
        }
        native = _native;
    }

    public var viewportPath(get, set): String;
    function get_viewportPath(): String {
        return native.get('viewport_path');
    }
    function set_viewportPath(value: String): String {
      native.set('viewport_path', value);
        return value;
    }


}
