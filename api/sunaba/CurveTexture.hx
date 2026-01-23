package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class CurveTexture extends Texture2D {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('CurveTexture');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['CurveTexture', native];
        scriptLoader.call('loadScript', args);
    }

    public var curve(get, set): Curve;
    function get_curve(): Curve {
        var ref: NativeReference = native.get('curve');
        return new Curve(ref);
    }
    function set_curve(value: Curve): Curve {
      native.set('curve', value.native);
        return value;
    }
    public var textureMode(get, set): Int;
    function get_textureMode(): Int {
        return native.get('texture_mode');
    }
    function set_textureMode(value: Int): Int {
      native.set('texture_mode', value);
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
