package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeVectorFunc extends VisualShaderNodeVectorBase {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeVectorFunc');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeVectorFunc', native];
        scriptLoader.call('loadScript', args);
    }

    public var function(get, set): Int;
    function get_function(): Int {
        return native.get('function');
    }
    function set_function(value: Int): Int {
      native.set('function', value);
        return value;
    }


}
