package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Vector2;
import sunaba.core.Signal;

class InputEventScreenDrag extends InputEventFromWindow {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventScreenDrag');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['InputEventScreenDrag', native];
        scriptLoader.call('loadScript', args);
    }

    public var index(get, set): Int;
    function get_index(): Int {
        return native.get('index');
    }
    function set_index(value: Int): Int {
      native.set('index', value);
        return value;
    }
    public var penInverted(get, set): Bool;
    function get_penInverted(): Bool {
        return native.get('pen_inverted');
    }
    function set_penInverted(value: Bool): Bool {
      native.set('pen_inverted', value);
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
    public var pressure(get, set): Float;
    function get_pressure(): Float {
        return native.get('pressure');
    }
    function set_pressure(value: Float): Float {
      native.set('pressure', value);
        return value;
    }
    public var relative(get, set): Vector2;
    function get_relative(): Vector2 {
        return native.get('relative');
    }
    function set_relative(value: Vector2): Vector2 {
      native.set('relative', value);
        return value;
    }
    public var screenRelative(get, set): Vector2;
    function get_screenRelative(): Vector2 {
        return native.get('screen_relative');
    }
    function set_screenRelative(value: Vector2): Vector2 {
      native.set('screen_relative', value);
        return value;
    }
    public var screenVelocity(get, set): Vector2;
    function get_screenVelocity(): Vector2 {
        return native.get('screen_velocity');
    }
    function set_screenVelocity(value: Vector2): Vector2 {
      native.set('screen_velocity', value);
        return value;
    }
    public var tilt(get, set): Vector2;
    function get_tilt(): Vector2 {
        return native.get('tilt');
    }
    function set_tilt(value: Vector2): Vector2 {
      native.set('tilt', value);
        return value;
    }
    public var velocity(get, set): Vector2;
    function get_velocity(): Vector2 {
        return native.get('velocity');
    }
    function set_velocity(value: Vector2): Vector2 {
      native.set('velocity', value);
        return value;
    }


}
