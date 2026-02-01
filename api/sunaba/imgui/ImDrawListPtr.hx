package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class ImDrawListPtr extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImDrawListPtr');
        }
        this.native = _native;
    }

    public var flags(get, set): Int;
    function get_flags(): Int {
        return native.get('Flags');
    }
    function set_flags(value: Int): Int {
      native.set('Flags', value);
        return value;
    }
    public var fringeScale(get, set): Float;
    function get_fringeScale(): Float {
        return native.get('_FringeScale');
    }
    function set_fringeScale(value: Float): Float {
      native.set('_FringeScale', value);
        return value;
    }


}
