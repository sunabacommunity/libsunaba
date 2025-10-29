package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class NoiseTexture2D extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('NoiseTexture2D');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['NoiseTexture2D', native];
        scriptLoader.call('loadScript', args);
    }

    public var asNormalMap(get, set): Bool;
    function get_asNormalMap(): Bool {
        return native.get('as_normal_map');
    }
    function set_asNormalMap(value: Bool): Bool {
      native.set('as_normal_map', value);
        return value;
    }
    public var bumpStrength(get, set): Float;
    function get_bumpStrength(): Float {
        return native.get('bump_strength');
    }
    function set_bumpStrength(value: Float): Float {
      native.set('bump_strength', value);
        return value;
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
    public var generateMipmaps(get, set): Bool;
    function get_generateMipmaps(): Bool {
        return native.get('generate_mipmaps');
    }
    function set_generateMipmaps(value: Bool): Bool {
      native.set('generate_mipmaps', value);
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
    public var in3dSpace(get, set): Bool;
    function get_in3dSpace(): Bool {
        return native.get('in_3d_space');
    }
    function set_in3dSpace(value: Bool): Bool {
      native.set('in_3d_space', value);
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
