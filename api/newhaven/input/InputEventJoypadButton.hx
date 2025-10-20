package newhaven.input;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class InputEventJoypadButton extends InputEvent {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventJoypadButton');
        }
        native = _native;
    }

    public var buttonIndex(get, set): Int;
    function get_buttonIndex(): Int {
        return native.get('button_index');
    }
    function set_buttonIndex(value: Int): Int {
      native.set('button_index', value);
        return value;
    }
    public var pressed(get, set): Bool;
    function get_pressed(): Bool {
        return native.get('pressed');
    }
    function set_pressed(value: Bool): Bool {
      native.set('pressed', value);
        return value;
    }
    public var pressure(get, set): Float;
    function get_pressure(): Float {
        return native.get('pressure');
    }
    function set_pressure(value: Float): Float {
      native.set('pressure', value);
        return value;
    }

}
