package newhaven.input;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

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
