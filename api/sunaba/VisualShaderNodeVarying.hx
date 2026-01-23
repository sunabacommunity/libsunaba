package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeVarying extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeVarying');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeVarying', native];
        scriptLoader.call('loadScript', args);
    }

    public var varyingName(get, set): String;
    function get_varyingName(): String {
        return native.get('varying_name');
    }
    function set_varyingName(value: String): String {
      native.set('varying_name', value);
        return value;
    }
    public var varyingType(get, set): Int;
    function get_varyingType(): Int {
        return native.get('varying_type');
    }
    function set_varyingType(value: Int): Int {
      native.set('varying_type', value);
        return value;
    }


}
