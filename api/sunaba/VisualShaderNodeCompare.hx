package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeCompare extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeCompare');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeCompare', native];
        scriptLoader.call('loadScript', args);
    }

    public var condition(get, set): Int;
    function get_condition(): Int {
        return native.get('condition');
    }
    function set_condition(value: Int): Int {
      native.set('condition', value);
        return value;
    }
    public var function(get, set): Int;
    function get_function(): Int {
        return native.get('function');
    }
    function set_function(value: Int): Int {
      native.set('function', value);
        return value;
    }
    public var type(get, set): Int;
    function get_type(): Int {
        return native.get('type');
    }
    function set_type(value: Int): Int {
      native.set('type', value);
        return value;
    }


}
