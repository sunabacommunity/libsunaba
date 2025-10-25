package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Vector2;
import sunaba.core.Signal;

class GradientTexture2D extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('GradientTexture2D');
        }
        native = _native;
    }

    public var fill(get, set): Int;
    function get_fill(): Int {
        return native.get('fill');
    }
    function set_fill(value: Int): Int {
      native.set('fill', value);
        return value;
    }
    public var fillFrom(get, set): Vector2;
    function get_fillFrom(): Vector2 {
        return native.get('fill_from');
    }
    function set_fillFrom(value: Vector2): Vector2 {
      native.set('fill_from', value);
        return value;
    }
    public var fillTo(get, set): Vector2;
    function get_fillTo(): Vector2 {
        return native.get('fill_to');
    }
    function set_fillTo(value: Vector2): Vector2 {
      native.set('fill_to', value);
        return value;
    }
    public var gradient(get, set): Gradient;
    function get_gradient(): Gradient {
        var ref: NativeReference = native.get('gradient');
        return new Gradient(ref);
    }
    function set_gradient(value: Gradient): Gradient {
      native.set('gradient', value.native);
        return value;
    }
    public var height(get, set): Int;
    function get_height(): Int {
        return native.get('height');
    }
    function set_height(value: Int): Int {
      native.set('height', value);
        return value;
    }
    public var repeat(get, set): Int;
    function get_repeat(): Int {
        return native.get('repeat');
    }
    function set_repeat(value: Int): Int {
      native.set('repeat', value);
        return value;
    }
    public var useHdr(get, set): Bool;
    function get_useHdr(): Bool {
        return native.get('use_hdr');
    }
    function set_useHdr(value: Bool): Bool {
      native.set('use_hdr', value);
        return value;
    }
    public var width(get, set): Int;
    function get_width(): Int {
        return native.get('width');
    }
    function set_width(value: Int): Int {
      native.set('width', value);
        return value;
    }


}
