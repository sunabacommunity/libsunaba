package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class CurveXYZTexture extends Texture2D {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('CurveXYZTexture');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['CurveXYZTexture', native];
        scriptLoader.call('loadScript', args);
    }

    public var curveX(get, set): Curve;
    function get_curveX(): Curve {
        var ref: NativeReference = native.get('curve_x');
        return new Curve(ref);
    }
    function set_curveX(value: Curve): Curve {
      native.set('curve_x', value.native);
        return value;
    }
    public var curveY(get, set): Curve;
    function get_curveY(): Curve {
        var ref: NativeReference = native.get('curve_y');
        return new Curve(ref);
    }
    function set_curveY(value: Curve): Curve {
      native.set('curve_y', value.native);
        return value;
    }
    public var curveZ(get, set): Curve;
    function get_curveZ(): Curve {
        var ref: NativeReference = native.get('curve_z');
        return new Curve(ref);
    }
    function set_curveZ(value: Curve): Curve {
      native.set('curve_z', value.native);
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
