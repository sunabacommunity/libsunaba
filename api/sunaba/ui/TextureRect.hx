package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Texture2D;
import sunaba.core.Signal;

class TextureRect extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('TextureRect');
        }
        native = _native;
    }

    public var expandMode(get, set): Int;
    function get_expandMode(): Int {
        return native.get('expand_mode');
    }
    function set_expandMode(value: Int): Int {
      native.set('expand_mode', value);
        return value;
    }
    public var flipH(get, set): Bool;
    function get_flipH(): Bool {
        return native.get('flip_h');
    }
    function set_flipH(value: Bool): Bool {
      native.set('flip_h', value);
        return value;
    }
    public var flipV(get, set): Bool;
    function get_flipV(): Bool {
        return native.get('flip_v');
    }
    function set_flipV(value: Bool): Bool {
      native.set('flip_v', value);
        return value;
    }
    public var stretchMode(get, set): Int;
    function get_stretchMode(): Int {
        return native.get('stretch_mode');
    }
    function set_stretchMode(value: Int): Int {
      native.set('stretch_mode', value);
        return value;
    }
    public var texture(get, set): Texture2D;
    function get_texture(): Texture2D {
        var ref: NativeReference = native.get('texture');
        return new Texture2D(ref);
    }
    function set_texture(value: Texture2D): Texture2D {
      native.set('texture', value.native);
        return value;
    }


}
