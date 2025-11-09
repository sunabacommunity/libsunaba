package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class InputEventMIDI extends InputEvent {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('InputEventMIDI');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['InputEventMIDI', native];
        scriptLoader.call('loadScript', args);
    }

    public var channel(get, set): Int;
    function get_channel(): Int {
        return native.get('channel');
    }
    function set_channel(value: Int): Int {
      native.set('channel', value);
        return value;
    }
    public var controllerNumber(get, set): Int;
    function get_controllerNumber(): Int {
        return native.get('controller_number');
    }
    function set_controllerNumber(value: Int): Int {
      native.set('controller_number', value);
        return value;
    }
    public var controllerValue(get, set): Int;
    function get_controllerValue(): Int {
        return native.get('controller_value');
    }
    function set_controllerValue(value: Int): Int {
      native.set('controller_value', value);
        return value;
    }
    public var instrument(get, set): Int;
    function get_instrument(): Int {
        return native.get('instrument');
    }
    function set_instrument(value: Int): Int {
      native.set('instrument', value);
        return value;
    }
    public var message(get, set): Int;
    function get_message(): Int {
        return native.get('message');
    }
    function set_message(value: Int): Int {
      native.set('message', value);
        return value;
    }
    public var pitch(get, set): Int;
    function get_pitch(): Int {
        return native.get('pitch');
    }
    function set_pitch(value: Int): Int {
      native.set('pitch', value);
        return value;
    }
    public var pressure(get, set): Int;
    function get_pressure(): Int {
        return native.get('pressure');
    }
    function set_pressure(value: Int): Int {
      native.set('pressure', value);
        return value;
    }
    public var velocity(get, set): Int;
    function get_velocity(): Int {
        return native.get('velocity');
    }
    function set_velocity(value: Int): Int {
      native.set('velocity', value);
        return value;
    }


}
