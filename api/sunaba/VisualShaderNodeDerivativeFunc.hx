package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeDerivativeFunc extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeDerivativeFunc');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeDerivativeFunc', native];
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
    public var opType(get, set): Int;
    function get_opType(): Int {
        return native.get('op_type');
    }
    function set_opType(value: Int): Int {
      native.set('op_type', value);
        return value;
    }
    public var precision(get, set): Int;
    function get_precision(): Int {
        return native.get('precision');
    }
    function set_precision(value: Int): Int {
      native.set('precision', value);
        return value;
    }


}
