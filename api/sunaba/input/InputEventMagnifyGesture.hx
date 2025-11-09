package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class InputEventMagnifyGesture extends InputEventGesture {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('InputEventMagnifyGesture');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['InputEventMagnifyGesture', native];
        scriptLoader.call('loadScript', args);
    }

    public var factor(get, set): Float;
    function get_factor(): Float {
        return native.get('factor');
    }
    function set_factor(value: Float): Float {
      native.set('factor', value);
        return value;
    }


}
