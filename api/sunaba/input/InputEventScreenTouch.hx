package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Signal;

class InputEventScreenTouch extends InputEventFromWindow {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventScreenTouch');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['InputEventScreenTouch', native];
        scriptLoader.call('loadScript', args);
    }

    public var canceled(get, set): Bool;
    function get_canceled(): Bool {
        return native.get('canceled');
    }
    function set_canceled(value: Bool): Bool {
      native.set('canceled', value);
        return value;
    }
    public var doubleTap(get, set): Bool;
    function get_doubleTap(): Bool {
        return native.get('double_tap');
    }
    function set_doubleTap(value: Bool): Bool {
      native.set('double_tap', value);
        return value;
    }
    public var index(get, set): Int;
    function get_index(): Int {
        return native.get('index');
    }
    function set_index(value: Int): Int {
      native.set('index', value);
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
    public var pressed(get, set): Bool;
    function get_pressed(): Bool {
        return native.get('pressed');
    }
    function set_pressed(value: Bool): Bool {
      native.set('pressed', value);
        return value;
    }


}
