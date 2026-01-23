package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeMultiplyAdd extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeMultiplyAdd');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeMultiplyAdd', native];
        scriptLoader.call('loadScript', args);
    }

    public var opType(get, set): Int;
    function get_opType(): Int {
        return native.get('op_type');
    }
    function set_opType(value: Int): Int {
      native.set('op_type', value);
        return value;
    }


}
