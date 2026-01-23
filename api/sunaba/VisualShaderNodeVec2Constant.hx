package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Signal;

class VisualShaderNodeVec2Constant extends VisualShaderNodeConstant {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeVec2Constant');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeVec2Constant', native];
        scriptLoader.call('loadScript', args);
    }

    public var constant(get, set): Vector2;
    function get_constant(): Vector2 {
        return native.get('constant');
    }
    function set_constant(value: Vector2): Vector2 {
      native.set('constant', value);
        return value;
    }


}
