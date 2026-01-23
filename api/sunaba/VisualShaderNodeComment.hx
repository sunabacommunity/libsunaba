package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeComment extends VisualShaderNodeFrame {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeComment');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeComment', native];
        scriptLoader.call('loadScript', args);
    }

    public var description(get, set): String;
    function get_description(): String {
        return native.get('description');
    }
    function set_description(value: String): String {
      native.set('description', value);
        return value;
    }


}
