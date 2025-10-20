package newhaven.input;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector2;

class InputEventMouse extends InputEventWithModifiers {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventMouse');
        }
        native = _native;
    }

    public var buttonMask(get, set): Int;
    function get_buttonMask(): Int {
        return native.get('button_mask');
    }
    function set_buttonMask(value: Int): Int {
      native.set('button_mask', value);
        return value;
    }
    public var globalPosition(get, set): Vector2;
    function get_globalPosition(): Vector2 {
        return native.get('global_position');
    }
    function set_globalPosition(value: Vector2): Vector2 {
      native.set('global_position', value);
        return value;
    }
    public var position(get, set): Vector2;
    function get_position(): Vector2 {
        return native.get('position');
    }
    function set_position(value: Vector2): Vector2 {
      native.set('position', value);
        return value;
    }

}
