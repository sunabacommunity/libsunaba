package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class SubViewportContainer extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('SubViewportContainer');
        }
        native = _native;
    }

    public var mouseTarget(get, set): Bool;
    function get_mouseTarget(): Bool {
        return native.get('mouse_target');
    }
    function set_mouseTarget(value: Bool): Bool {
      native.set('mouse_target', value);
        return value;
    }
    public var stretch(get, set): Bool;
    function get_stretch(): Bool {
        return native.get('stretch');
    }
    function set_stretch(value: Bool): Bool {
      native.set('stretch', value);
        return value;
    }
    public var stretchShrink(get, set): Int;
    function get_stretchShrink(): Int {
        return native.get('stretch_shrink');
    }
    function set_stretchShrink(value: Int): Int {
      native.set('stretch_shrink', value);
        return value;
    }

}
