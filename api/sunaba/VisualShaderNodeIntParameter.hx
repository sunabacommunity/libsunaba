package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.TypedArray;
import sunaba.core.Signal;

class VisualShaderNodeIntParameter extends VisualShaderNodeParameter {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeIntParameter');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeIntParameter', native];
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
    public var enumNames(get, set): TypedArray<String>;
    function get_enumNames(): TypedArray<String> {
        return native.get('enum_names');
    }
    function set_enumNames(value: TypedArray<String>): TypedArray<String> {
      native.set('enum_names', value);
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
    public var max(get, set): Int;
    function get_max(): Int {
        return native.get('max');
    }
    function set_max(value: Int): Int {
      native.set('max', value);
        return value;
    }
    public var min(get, set): Int;
    function get_min(): Int {
        return native.get('min');
    }
    function set_min(value: Int): Int {
      native.set('min', value);
        return value;
    }
    public var step(get, set): Int;
    function get_step(): Int {
        return native.get('step');
    }
    function set_step(value: Int): Int {
      native.set('step', value);
        return value;
    }


}
