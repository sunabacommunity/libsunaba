package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Signal;

class InputEventMouse extends InputEventWithModifiers {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('InputEventMouse');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['InputEventMouse', native];
        scriptLoader.call('loadScript', args);
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
