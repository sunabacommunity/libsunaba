package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class InputEventShortcut extends InputEvent {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEventShortcut');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['InputEventShortcut', native];
        scriptLoader.call('loadScript', args);
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
