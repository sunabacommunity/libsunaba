package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeUIntParameter extends VisualShaderNodeParameter {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeUIntParameter');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeUIntParameter', native];
        scriptLoader.call('loadScript', args);
    }

    public var defaultValue(get, set): Int;
    function get_defaultValue(): Int {
        return native.get('default_value');
    }
    function set_defaultValue(value: Int): Int {
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
