package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class InputEventAction extends InputEvent {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventAction');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['InputEventAction', native];
        scriptLoader.call('loadScript', args);
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
