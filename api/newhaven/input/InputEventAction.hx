package newhaven.input;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class InputEventAction extends InputEvent {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventAction');
        }
        native = _native;
    }

    public var action(get, set): String;
    function get_action(): String {
        return native.get('action');
    }
    function set_action(value: String): String {
      native.set('action', value);
        return value;
    }
    public var eventIndex(get, set): Int;
    function get_eventIndex(): Int {
        return native.get('event_index');
    }
    function set_eventIndex(value: Int): Int {
      native.set('event_index', value);
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
    public var strength(get, set): Float;
    function get_strength(): Float {
        return native.get('strength');
    }
    function set_strength(value: Float): Float {
      native.set('strength', value);
        return value;
    }

}
