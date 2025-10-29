package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class InputEventFromWindow extends InputEvent {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventFromWindow');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['InputEventFromWindow', native];
        scriptLoader.call('loadScript', args);
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
