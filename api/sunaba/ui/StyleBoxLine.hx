package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Color;
import sunaba.core.Signal;

class StyleBoxLine extends StyleBox {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('StyleBoxLine');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['StyleBoxLine', native];
        scriptLoader.call('loadScript', args);
    }

    public var color(get, set): Color;
    function get_color(): Color {
        return native.get('color');
    }
    function set_color(value: Color): Color {
      native.set('color', value);
        return value;
    }
    public var growBegin(get, set): Float;
    function get_growBegin(): Float {
        return native.get('grow_begin');
    }
    function set_growBegin(value: Float): Float {
      native.set('grow_begin', value);
        return value;
    }
    public var growEnd(get, set): Float;
    function get_growEnd(): Float {
        return native.get('grow_end');
    }
    function set_growEnd(value: Float): Float {
      native.set('grow_end', value);
        return value;
    }
    public var thickness(get, set): Int;
    function get_thickness(): Int {
        return native.get('thickness');
    }
    function set_thickness(value: Int): Int {
      native.set('thickness', value);
        return value;
    }
    public var vertical(get, set): Bool;
    function get_vertical(): Bool {
        return native.get('vertical');
    }
    function set_vertical(value: Bool): Bool {
      native.set('vertical', value);
        return value;
    }


}
