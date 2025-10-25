package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class InputEventJoypadMotion extends InputEvent {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventJoypadMotion');
        }
        native = _native;
    }

    public var axis(get, set): Int;
    function get_axis(): Int {
        return native.get('axis');
    }
    function set_axis(value: Int): Int {
      native.set('axis', value);
        return value;
    }
    public var axisValue(get, set): Float;
    function get_axisValue(): Float {
        return native.get('axis_value');
    }
    function set_axisValue(value: Float): Float {
      native.set('axis_value', value);
        return value;
    }


}
