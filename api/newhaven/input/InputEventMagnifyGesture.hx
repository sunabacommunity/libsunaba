package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class InputEventMagnifyGesture extends InputEventGesture {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventMagnifyGesture');
        }
        native = _native;
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
