package newhaven.input;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class InputEventFromWindow extends InputEvent {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventFromWindow');
        }
        native = _native;
    }

    public var windowId(get, set): Int;
    function get_windowId(): Int {
        return native.get('window_id');
    }
    function set_windowId(value: Int): Int {
      native.set('window_id', value);
        return value;
    }

}
