package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.ByteArray;
import sunaba.core.Dictionary;
import sunaba.core.Signal;
import sunaba.core.Vector2i;
import sunaba.core.Vector2;
import sunaba.core.TypedArray;
import sunaba.core.Rect2;

class FontFile extends Font {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('FontFile');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['FontFile', native];
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
    public var data(get, set): ByteArray;
    function get_data(): ByteArray {
        return native.get('data');
    }
    function set_data(value: ByteArray): ByteArray {
      native.set('data', value);
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
    public var fixedSize(get, set): Int;
    function get_fixedSize(): Int {
        return native.get('fixed_size');
    }
    function set_fixedSize(value: Int): Int {
      native.set('fixed_size', value);
        return value;
    }
    public var fixedSizeScaleMode(get, set): Int;
    function get_fixedSizeScaleMode(): Int {
        return native.get('fixed_size_scale_mode');
    }
    function set_fixedSizeScaleMode(value: Int): Int {
      native.set('fixed_size_scale_mode', value);
        return value;
    }
    public var fontName(get, set): String;
    function get_fontName(): String {
        return native.get('font_name');
    }
    function set_fontName(value: String): String {
      native.set('font_name', value);
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
    public var fontStyle(get, set): Int;
    function get_fontStyle(): Int {
        return native.get('font_style');
    }
    function set_fontStyle(value: Int): Int {
      native.set('font_style', value);
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
    public var opentypeFeatureOverrides(get, set): Dictionary;
    function get_opentypeFeatureOverrides(): Dictionary {
        return native.get('opentype_feature_overrides');
    }
    function set_opentypeFeatureOverrides(value: Dictionary): Dictionary {
      native.set('opentype_feature_overrides', value);
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
    public var styleName(get, set): String;
    function get_styleName(): String {
        return native.get('style_name');
    }
    function set_styleName(value: String): String {
      native.set('style_name', value);
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


  public function clearCache(): Void {
      var args = new ArrayList();
      native.call('clear_cache', args);
  }
  public function clearGlyphs(cacheIndex: Int, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      native.call('clear_glyphs', args);
  }
  public function clearKerningMap(cacheIndex: Int, size: Int): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      native.call('clear_kerning_map', args);
  }
  public function clearSizeCache(cacheIndex: Int): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      native.call('clear_size_cache', args);
  }
  public function clearTextures(cacheIndex: Int, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      native.call('clear_textures', args);
  }
  public function getCacheAscent(cacheIndex: Int, size: Int): Float {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      return native.call('get_cache_ascent', args);
  }
  public function getCacheCount(): Int {
      var args = new ArrayList();
      return native.call('get_cache_count', args);
  }
  public function getCacheDescent(cacheIndex: Int, size: Int): Float {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      return native.call('get_cache_descent', args);
  }
  public function getCacheScale(cacheIndex: Int, size: Int): Float {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      return native.call('get_cache_scale', args);
  }
  public function getCacheUnderlinePosition(cacheIndex: Int, size: Int): Float {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      return native.call('get_cache_underline_position', args);
  }
  public function getCacheUnderlineThickness(cacheIndex: Int, size: Int): Float {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      return native.call('get_cache_underline_thickness', args);
  }
  public function getCharFromGlyphIndex(size: Int, glyphIndex: Int): Int {
      var args = new ArrayList();
      args.append(size);
      args.append(glyphIndex);
      return native.call('get_char_from_glyph_index', args);
  }
  public function getEmbolden(cacheIndex: Int): Float {
      var args = new ArrayList();
      args.append(cacheIndex);
      return native.call('get_embolden', args);
  }
  public function getExtraBaselineOffset(cacheIndex: Int): Float {
      var args = new ArrayList();
      args.append(cacheIndex);
      return native.call('get_extra_baseline_offset', args);
  }
  public function getExtraSpacing(cacheIndex: Int, spacing: Int): Int {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(spacing);
      return native.call('get_extra_spacing', args);
  }
  public function getFaceIndex(cacheIndex: Int): Int {
      var args = new ArrayList();
      args.append(cacheIndex);
      return native.call('get_face_index', args);
  }
  public function getGlyphAdvance(cacheIndex: Int, size: Int, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      return native.call('get_glyph_advance', args);
  }
  public function getGlyphIndex(size: Int, char: Int, variationSelector: Int): Int {
      var args = new ArrayList();
      args.append(size);
      args.append(char);
      args.append(variationSelector);
      return native.call('get_glyph_index', args);
  }
  public function getGlyphList(cacheIndex: Int, size: Vector2i): TypedArray<Int> {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      return native.call('get_glyph_list', args);
  }
  public function getGlyphOffset(cacheIndex: Int, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      return native.call('get_glyph_offset', args);
  }
  public function getGlyphSize(cacheIndex: Int, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      return native.call('get_glyph_size', args);
  }
  public function getGlyphTextureIdx(cacheIndex: Int, size: Vector2i, glyph: Int): Int {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      return native.call('get_glyph_texture_idx', args);
  }
  public function getGlyphUvRect(cacheIndex: Int, size: Vector2i, glyph: Int): Rect2 {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      return native.call('get_glyph_uv_rect', args);
  }
  public function getKerning(cacheIndex: Int, size: Int, glyphPair: Vector2i): Vector2 {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyphPair);
      return native.call('get_kerning', args);
  }
  public function getKerningList(cacheIndex: Int, size: Int): ArrayList {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      return native.call('get_kerning_list', args);
  }
  public function getLanguageSupportOverride(language: String): Bool {
      var args = new ArrayList();
      args.append(language);
      return native.call('get_language_support_override', args);
  }
  public function getLanguageSupportOverrides(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_language_support_overrides', args);
  }
  public function getScriptSupportOverride(script: String): Bool {
      var args = new ArrayList();
      args.append(script);
      return native.call('get_script_support_override', args);
  }
  public function getScriptSupportOverrides(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_script_support_overrides', args);
  }
  public function getSizeCacheList(cacheIndex: Int): ArrayList {
      var args = new ArrayList();
      args.append(cacheIndex);
      return native.call('get_size_cache_list', args);
  }
  public function getTextureCount(cacheIndex: Int, size: Vector2i): Int {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      return native.call('get_texture_count', args);
  }
  public function getTextureImage(cacheIndex: Int, size: Vector2i, textureIndex: Int): Image {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(textureIndex);
      var ref: NativeReference = native.call('get_texture_image', args);
      return new Image(ref);
  }
  public function getTextureOffsets(cacheIndex: Int, size: Vector2i, textureIndex: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(textureIndex);
      return native.call('get_texture_offsets', args);
  }
  public function getVariationCoordinates(cacheIndex: Int): Dictionary {
      var args = new ArrayList();
      args.append(cacheIndex);
      return native.call('get_variation_coordinates', args);
  }
  public function loadBitmapFont(path: String): Int {
      var args = new ArrayList();
      args.append(path);
      return native.call('load_bitmap_font', args);
  }
  public function loadDynamicFont(path: String): Int {
      var args = new ArrayList();
      args.append(path);
      return native.call('load_dynamic_font', args);
  }
  public function removeCache(cacheIndex: Int): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      native.call('remove_cache', args);
  }
  public function removeGlyph(cacheIndex: Int, size: Vector2i, glyph: Int): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      native.call('remove_glyph', args);
  }
  public function removeKerning(cacheIndex: Int, size: Int, glyphPair: Vector2i): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyphPair);
      native.call('remove_kerning', args);
  }
  public function removeLanguageSupportOverride(language: String): Void {
      var args = new ArrayList();
      args.append(language);
      native.call('remove_language_support_override', args);
  }
  public function removeScriptSupportOverride(script: String): Void {
      var args = new ArrayList();
      args.append(script);
      native.call('remove_script_support_override', args);
  }
  public function removeSizeCache(cacheIndex: Int, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      native.call('remove_size_cache', args);
  }
  public function removeTexture(cacheIndex: Int, size: Vector2i, textureIndex: Int): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(textureIndex);
      native.call('remove_texture', args);
  }
  public function renderGlyph(cacheIndex: Int, size: Vector2i, index: Int): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(index);
      native.call('render_glyph', args);
  }
  public function renderRange(cacheIndex: Int, size: Vector2i, start: Int, end: Int): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(start);
      args.append(end);
      native.call('render_range', args);
  }
  public function setCacheAscent(cacheIndex: Int, size: Int, ascent: Float): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(ascent);
      native.call('set_cache_ascent', args);
  }
  public function setCacheDescent(cacheIndex: Int, size: Int, descent: Float): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(descent);
      native.call('set_cache_descent', args);
  }
  public function setCacheScale(cacheIndex: Int, size: Int, scale: Float): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(scale);
      native.call('set_cache_scale', args);
  }
  public function setCacheUnderlinePosition(cacheIndex: Int, size: Int, underlinePosition: Float): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(underlinePosition);
      native.call('set_cache_underline_position', args);
  }
  public function setCacheUnderlineThickness(cacheIndex: Int, size: Int, underlineThickness: Float): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(underlineThickness);
      native.call('set_cache_underline_thickness', args);
  }
  public function setEmbolden(cacheIndex: Int, strength: Float): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(strength);
      native.call('set_embolden', args);
  }
  public function setExtraBaselineOffset(cacheIndex: Int, baselineOffset: Float): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(baselineOffset);
      native.call('set_extra_baseline_offset', args);
  }
  public function setExtraSpacing(cacheIndex: Int, spacing: Int, value: Int): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(spacing);
      args.append(value);
      native.call('set_extra_spacing', args);
  }
  public function setFaceIndex(cacheIndex: Int, faceIndex: Int): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(faceIndex);
      native.call('set_face_index', args);
  }
  public function setGlyphAdvance(cacheIndex: Int, size: Int, glyph: Int, advance: Vector2): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      args.append(advance);
      native.call('set_glyph_advance', args);
  }
  public function setGlyphOffset(cacheIndex: Int, size: Vector2i, glyph: Int, offset: Vector2): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      args.append(offset);
      native.call('set_glyph_offset', args);
  }
  public function setGlyphSize(cacheIndex: Int, size: Vector2i, glyph: Int, glSize: Vector2): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      args.append(glSize);
      native.call('set_glyph_size', args);
  }
  public function setGlyphTextureIdx(cacheIndex: Int, size: Vector2i, glyph: Int, textureIdx: Int): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      args.append(textureIdx);
      native.call('set_glyph_texture_idx', args);
  }
  public function setGlyphUvRect(cacheIndex: Int, size: Vector2i, glyph: Int, uvRect: Rect2): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyph);
      args.append(uvRect);
      native.call('set_glyph_uv_rect', args);
  }
  public function setKerning(cacheIndex: Int, size: Int, glyphPair: Vector2i, kerning: Vector2): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(glyphPair);
      args.append(kerning);
      native.call('set_kerning', args);
  }
  public function setLanguageSupportOverride(language: String, supported: Bool): Void {
      var args = new ArrayList();
      args.append(language);
      args.append(supported);
      native.call('set_language_support_override', args);
  }
  public function setScriptSupportOverride(script: String, supported: Bool): Void {
      var args = new ArrayList();
      args.append(script);
      args.append(supported);
      native.call('set_script_support_override', args);
  }
  public function setTextureImage(cacheIndex: Int, size: Vector2i, textureIndex: Int, image: Image): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(textureIndex);
      args.append(image.native);
      native.call('set_texture_image', args);
  }
  public function setTextureOffsets(cacheIndex: Int, size: Vector2i, textureIndex: Int, offset: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(size);
      args.append(textureIndex);
      args.append(offset);
      native.call('set_texture_offsets', args);
  }
  public function setTransform(cacheIndex: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(transform);
      native.call('set_transform', args);
  }
  public function setVariationCoordinates(cacheIndex: Int, variationCoordinates: Dictionary): Void {
      var args = new ArrayList();
      args.append(cacheIndex);
      args.append(variationCoordinates);
      native.call('set_variation_coordinates', args);
  }
}
