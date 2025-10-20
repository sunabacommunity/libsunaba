package newhaven.input;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

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
