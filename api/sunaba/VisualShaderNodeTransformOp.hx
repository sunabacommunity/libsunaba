package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeTransformOp extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeTransformOp');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeTransformOp', native];
        scriptLoader.call('loadScript', args);
    }

    public var operator(get, set): Int;
    function get_operator(): Int {
        return native.get('operator');
    }
    function set_operator(value: Int): Int {
      native.set('operator', value);
        return value;
    }


}
