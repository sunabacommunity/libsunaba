package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Quaternion;
import sunaba.core.Signal;

class VisualShaderNodeVec4Constant extends VisualShaderNodeConstant {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeVec4Constant');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeVec4Constant', native];
        scriptLoader.call('loadScript', args);
    }

    public var constant(get, set): Quaternion;
    function get_constant(): Quaternion {
        return native.get('constant');
    }
    function set_constant(value: Quaternion): Quaternion {
      native.set('constant', value);
        return value;
    }


}
