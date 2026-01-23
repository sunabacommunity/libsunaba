package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeParameterRef extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeParameterRef');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeParameterRef', native];
        scriptLoader.call('loadScript', args);
    }

    public var parameterName(get, set): String;
    function get_parameterName(): String {
        return native.get('parameter_name');
    }
    function set_parameterName(value: String): String {
      native.set('parameter_name', value);
        return value;
    }


}
