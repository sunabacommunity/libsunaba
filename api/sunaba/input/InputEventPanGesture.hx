package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Vector2;
import sunaba.core.Signal;

class InputEventPanGesture extends InputEventGesture {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventPanGesture');
        }
        native = _native;
    }

    public var delta(get, set): Vector2;
    function get_delta(): Vector2 {
        return native.get('delta');
    }
    function set_delta(value: Vector2): Vector2 {
      native.set('delta', value);
        return value;
    }


}
