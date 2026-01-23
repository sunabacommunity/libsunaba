package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeBooleanConstant extends VisualShaderNodeConstant {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeBooleanConstant');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeBooleanConstant', native];
        scriptLoader.call('loadScript', args);
    }

    public var constant(get, set): Bool;
    function get_constant(): Bool {
        return native.get('constant');
    }
    function set_constant(value: Bool): Bool {
      native.set('constant', value);
        return value;
    }


}
