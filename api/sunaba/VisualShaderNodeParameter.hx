package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeParameter extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeParameter');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeParameter', native];
        scriptLoader.call('loadScript', args);
    }

    public var instanceIndex(get, set): Int;
    function get_instanceIndex(): Int {
        return native.get('instance_index');
    }
    function set_instanceIndex(value: Int): Int {
      native.set('instance_index', value);
        return value;
    }
    public var parameterName(get, set): String;
    function get_parameterName(): String {
        return native.get('parameter_name');
    }
    function set_parameterName(value: String): String {
      native.set('parameter_name', value);
        return value;
    }
    public var qualifier(get, set): Int;
    function get_qualifier(): Int {
        return native.get('qualifier');
    }
    function set_qualifier(value: Int): Int {
      native.set('qualifier', value);
        return value;
    }


}
