package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeFloatParameter extends VisualShaderNodeParameter {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeFloatParameter');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeFloatParameter', native];
        scriptLoader.call('loadScript', args);
    }

    public var defaultValue(get, set): Float;
    function get_defaultValue(): Float {
        return native.get('default_value');
    }
    function set_defaultValue(value: Float): Float {
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
    public var hint(get, set): Int;
    function get_hint(): Int {
        return native.get('hint');
    }
    function set_hint(value: Int): Int {
      native.set('hint', value);
        return value;
    }
    public var max(get, set): Float;
    function get_max(): Float {
        return native.get('max');
    }
    function set_max(value: Float): Float {
      native.set('max', value);
        return value;
    }
    public var min(get, set): Float;
    function get_min(): Float {
        return native.get('min');
    }
    function set_min(value: Float): Float {
      native.set('min', value);
        return value;
    }
    public var step(get, set): Float;
    function get_step(): Float {
        return native.get('step');
    }
    function set_step(value: Float): Float {
      native.set('step', value);
        return value;
    }


}
