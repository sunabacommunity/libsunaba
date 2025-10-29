package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.TypedArray;
import sunaba.core.Signal;

class SystemFont extends Font {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('SystemFont');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['SystemFont', native];
        scriptLoader.call('loadScript', args);
    }

    public var allowSystemFallback(get, set): Bool;
    function get_allowSystemFallback(): Bool {
        return native.get('allow_system_fallback');
    }
    function set_allowSystemFallback(value: Bool): Bool {
      native.set('allow_system_fallback', value);
        return value;
    }
    public var antialiasing(get, set): Int;
    function get_antialiasing(): Int {
        return native.get('antialiasing');
    }
    function set_antialiasing(value: Int): Int {
      native.set('antialiasing', value);
        return value;
    }
    public var disableEmbeddedBitmaps(get, set): Bool;
    function get_disableEmbeddedBitmaps(): Bool {
        return native.get('disable_embedded_bitmaps');
    }
    function set_disableEmbeddedBitmaps(value: Bool): Bool {
      native.set('disable_embedded_bitmaps', value);
        return value;
    }
    public var fontItalic(get, set): Bool;
    function get_fontItalic(): Bool {
        return native.get('font_italic');
    }
    function set_fontItalic(value: Bool): Bool {
      native.set('font_italic', value);
        return value;
    }
    public var fontNames(get, set): TypedArray<String>;
    function get_fontNames(): TypedArray<String> {
        return native.get('font_names');
    }
    function set_fontNames(value: TypedArray<String>): TypedArray<String> {
      native.set('font_names', value);
        return value;
    }
    public var fontStretch(get, set): Int;
    function get_fontStretch(): Int {
        return native.get('font_stretch');
    }
    function set_fontStretch(value: Int): Int {
      native.set('font_stretch', value);
        return value;
    }
    public var fontWeight(get, set): Int;
    function get_fontWeight(): Int {
        return native.get('font_weight');
    }
    function set_fontWeight(value: Int): Int {
      native.set('font_weight', value);
        return value;
    }
    public var forceAutohinter(get, set): Bool;
    function get_forceAutohinter(): Bool {
        return native.get('force_autohinter');
    }
    function set_forceAutohinter(value: Bool): Bool {
      native.set('force_autohinter', value);
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
    public var hinting(get, set): Int;
    function get_hinting(): Int {
        return native.get('hinting');
    }
    function set_hinting(value: Int): Int {
      native.set('hinting', value);
        return value;
    }
    public var keepRoundingRemainders(get, set): Bool;
    function get_keepRoundingRemainders(): Bool {
        return native.get('keep_rounding_remainders');
    }
    function set_keepRoundingRemainders(value: Bool): Bool {
      native.set('keep_rounding_remainders', value);
        return value;
    }
    public var modulateColorGlyphs(get, set): Bool;
    function get_modulateColorGlyphs(): Bool {
        return native.get('modulate_color_glyphs');
    }
    function set_modulateColorGlyphs(value: Bool): Bool {
      native.set('modulate_color_glyphs', value);
        return value;
    }
    public var msdfPixelRange(get, set): Int;
    function get_msdfPixelRange(): Int {
        return native.get('msdf_pixel_range');
    }
    function set_msdfPixelRange(value: Int): Int {
      native.set('msdf_pixel_range', value);
        return value;
    }
    public var msdfSize(get, set): Int;
    function get_msdfSize(): Int {
        return native.get('msdf_size');
    }
    function set_msdfSize(value: Int): Int {
      native.set('msdf_size', value);
        return value;
    }
    public var multichannelSignedDistanceField(get, set): Bool;
    function get_multichannelSignedDistanceField(): Bool {
        return native.get('multichannel_signed_distance_field');
    }
    function set_multichannelSignedDistanceField(value: Bool): Bool {
      native.set('multichannel_signed_distance_field', value);
        return value;
    }
    public var oversampling(get, set): Float;
    function get_oversampling(): Float {
        return native.get('oversampling');
    }
    function set_oversampling(value: Float): Float {
      native.set('oversampling', value);
        return value;
    }
    public var subpixelPositioning(get, set): Int;
    function get_subpixelPositioning(): Int {
        return native.get('subpixel_positioning');
    }
    function set_subpixelPositioning(value: Int): Int {
      native.set('subpixel_positioning', value);
        return value;
    }


}
