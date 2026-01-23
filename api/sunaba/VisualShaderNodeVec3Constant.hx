package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector3;
import sunaba.core.Signal;

class VisualShaderNodeVec3Constant extends VisualShaderNodeConstant {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeVec3Constant');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeVec3Constant', native];
        scriptLoader.call('loadScript', args);
    }

    public var constant(get, set): Vector3;
    function get_constant(): Vector3 {
        return native.get('constant');
    }
    function set_constant(value: Vector3): Vector3 {
      native.set('constant', value);
        return value;
    }


}
