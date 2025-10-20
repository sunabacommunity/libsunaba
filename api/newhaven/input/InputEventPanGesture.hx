package newhaven.input;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector2;

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
