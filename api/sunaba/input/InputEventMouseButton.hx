package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class InputEventMouseButton extends InputEventMouse {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventMouseButton');
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
    public var canceled(get, set): Bool;
    function get_canceled(): Bool {
        return native.get('canceled');
    }
    function set_canceled(value: Bool): Bool {
      native.set('canceled', value);
        return value;
    }
    public var doubleClick(get, set): Bool;
    function get_doubleClick(): Bool {
        return native.get('double_click');
    }
    function set_doubleClick(value: Bool): Bool {
      native.set('double_click', value);
        return value;
    }
    public var factor(get, set): Float;
    function get_factor(): Float {
        return native.get('factor');
    }
    function set_factor(value: Float): Float {
      native.set('factor', value);
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


}
