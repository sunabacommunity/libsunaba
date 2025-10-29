package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class ViewportTexture extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ViewportTexture');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['ViewportTexture', native];
        scriptLoader.call('loadScript', args);
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
