package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Gradient;
import sunaba.Noise;
import sunaba.core.Signal;

class NoiseTexture3D extends Texture3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('NoiseTexture3D');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['NoiseTexture3D', native];
        scriptLoader.call('loadScript', args);
    }

    public var colorRamp(get, set): Gradient;
    function get_colorRamp(): Gradient {
        var ref: NativeReference = native.get('color_ramp');
        return new Gradient(ref);
    }
    function set_colorRamp(value: Gradient): Gradient {
      native.set('color_ramp', value.native);
        return value;
    }
    public var depth(get, set): Int;
    function get_depth(): Int {
        return native.get('depth');
    }
    function set_depth(value: Int): Int {
      native.set('depth', value);
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
    public var invert(get, set): Bool;
    function get_invert(): Bool {
        return native.get('invert');
    }
    function set_invert(value: Bool): Bool {
      native.set('invert', value);
        return value;
    }
    public var noise(get, set): Noise;
    function get_noise(): Noise {
        var ref: NativeReference = native.get('noise');
        return new Noise(ref);
    }
    function set_noise(value: Noise): Noise {
      native.set('noise', value.native);
        return value;
    }
    public var normalize(get, set): Bool;
    function get_normalize(): Bool {
        return native.get('normalize');
    }
    function set_normalize(value: Bool): Bool {
      native.set('normalize', value);
        return value;
    }
    public var seamless(get, set): Bool;
    function get_seamless(): Bool {
        return native.get('seamless');
    }
    function set_seamless(value: Bool): Bool {
      native.set('seamless', value);
        return value;
    }
    public var seamlessBlendSkirt(get, set): Float;
    function get_seamlessBlendSkirt(): Float {
        return native.get('seamless_blend_skirt');
    }
    function set_seamlessBlendSkirt(value: Float): Float {
      native.set('seamless_blend_skirt', value);
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
