package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Color;

class ColorRect extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('ColorRect');
        }
        native = _native;
    }

    public var color(get, set): Color;
    function get_color(): Color {
        return native.get('color');
    }
    function set_color(value: Color): Color {
      native.set('color', value);
        return value;
    }

}
