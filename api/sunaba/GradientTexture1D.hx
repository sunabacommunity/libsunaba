package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class GradientTexture1D extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('GradientTexture1D');
        }
        native = _native;
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
