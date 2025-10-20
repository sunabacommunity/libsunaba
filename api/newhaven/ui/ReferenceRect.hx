package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Color;
import newhaven.core.Signal;

class ReferenceRect extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('ReferenceRect');
        }
        native = _native;
    }

    public var borderColor(get, set): Color;
    function get_borderColor(): Color {
        return native.get('border_color');
    }
    function set_borderColor(value: Color): Color {
      native.set('border_color', value);
        return value;
    }
    public var borderWidth(get, set): Float;
    function get_borderWidth(): Float {
        return native.get('border_width');
    }
    function set_borderWidth(value: Float): Float {
      native.set('border_width', value);
        return value;
    }
    public var editorOnly(get, set): Bool;
    function get_editorOnly(): Bool {
        return native.get('editor_only');
    }
    function set_editorOnly(value: Bool): Bool {
      native.set('editor_only', value);
        return value;
    }


}
