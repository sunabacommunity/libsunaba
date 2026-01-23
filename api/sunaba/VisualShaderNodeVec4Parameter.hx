package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector4;
import sunaba.core.Signal;

class VisualShaderNodeVec4Parameter extends VisualShaderNodeParameter {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeVec4Parameter');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeVec4Parameter', native];
        scriptLoader.call('loadScript', args);
    }

    public var defaultValue(get, set): Vector4;
    function get_defaultValue(): Vector4 {
        return native.get('default_value');
    }
    function set_defaultValue(value: Vector4): Vector4 {
      native.set('default_value', value);
        return value;
    }
    public var defaultValueEnabled(get, set): Bool;
    function get_defaultValueEnabled(): Bool {
        return native.get('default_value_enabled');
    }
    function set_defaultValueEnabled(value: Bool): Bool {
      native.set('default_value_enabled', value);
        return value;
    }


}
