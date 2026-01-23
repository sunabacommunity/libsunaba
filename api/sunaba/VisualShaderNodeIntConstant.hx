package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeIntConstant extends VisualShaderNodeConstant {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeIntConstant');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeIntConstant', native];
        scriptLoader.call('loadScript', args);
    }

    public var constant(get, set): Int;
    function get_constant(): Int {
        return native.get('constant');
    }
    function set_constant(value: Int): Int {
      native.set('constant', value);
        return value;
    }


}
