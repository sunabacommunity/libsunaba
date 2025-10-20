package newhaven.input;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class InputEventShortcut extends InputEvent {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventShortcut');
        }
        native = _native;
    }

    public var shortcut(get, set): Shortcut;
    function get_shortcut(): Shortcut {
        var ref: NativeReference = native.get('shortcut');
        return new Shortcut(ref);
    }
    function set_shortcut(value: Shortcut): Shortcut {
      native.set('shortcut', value.native);
        return value;
    }


}
