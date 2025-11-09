package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Color;
import sunaba.core.Vector2i;
import sunaba.core.Dictionary;
import sunaba.core.TypedArray;
import sunaba.core.Rect2;
import sunaba.core.ByteArray;
import sunaba.core.Vector2;

class TextService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('TextServer');
        }
        return _native;
    }



  public static function createFont(): Variant {
      var args = new ArrayList();
      return getNative().call('create_font', args);
  }
  public static function createFontLinkedVariation(fontRid: Variant): Variant {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('create_font_linked_variation', args);
  }
  public static function createShapedText(?direction: Int, ?orientation: Int): Variant {
      var args = new ArrayList();
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      return getNative().call('create_shaped_text', args);
  }
  public static function drawHexCodeBox(canvas: Variant, size: Int, pos: Vector2, index: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(canvas);
      args.append(size);
      args.append(pos);
      args.append(index);
      args.append(color);
      getNative().call('draw_hex_code_box', args);
  }
  public static function fontClearGlyphs(fontRid: Variant, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_clear_glyphs', args);
  }
  public static function fontClearKerningMap(fontRid: Variant, size: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_clear_kerning_map', args);
  }
  public static function fontClearSizeCache(fontRid: Variant): Void {
      var args = new ArrayList();
      args.append(fontRid);
      getNative().call('font_clear_size_cache', args);
  }
  public static function fontClearSystemFallbackCache(): Void {
      var args = new ArrayList();
      getNative().call('font_clear_system_fallback_cache', args);
  }
  public static function fontClearTextures(fontRid: Variant, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_clear_textures', args);
  }
  public static function fontDrawGlyph(fontRid: Variant, canvas: Variant, size: Int, pos: Vector2, index: Int, ?color: Color, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(canvas);
      args.append(size);
      args.append(pos);
      args.append(index);
      if (color != null) {
          args.append(color);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      getNative().call('font_draw_glyph', args);
  }
  public static function fontDrawGlyphOutline(fontRid: Variant, canvas: Variant, size: Int, outlineSize: Int, pos: Vector2, index: Int, ?color: Color, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(canvas);
      args.append(size);
      args.append(outlineSize);
      args.append(pos);
      args.append(index);
      if (color != null) {
          args.append(color);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      getNative().call('font_draw_glyph_outline', args);
  }
  public static function fontGetAntialiasing(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_antialiasing', args);
  }
  public static function fontGetAscent(fontRid: Variant, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_ascent', args);
  }
  public static function fontGetBaselineOffset(fontRid: Variant): Float {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_baseline_offset', args);
  }
  public static function fontGetCharFromGlyphIndex(fontRid: Variant, size: Int, glyphIndex: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphIndex);
      return getNative().call('font_get_char_from_glyph_index', args);
  }
  public static function fontGetDescent(fontRid: Variant, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_descent', args);
  }
  public static function fontGetDisableEmbeddedBitmaps(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_disable_embedded_bitmaps', args);
  }
  public static function fontGetEmbolden(fontRid: Variant): Float {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_embolden', args);
  }
  public static function fontGetFaceCount(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_face_count', args);
  }
  public static function fontGetFaceIndex(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_face_index', args);
  }
  public static function fontGetFixedSize(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_fixed_size', args);
  }
  public static function fontGetFixedSizeScaleMode(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_fixed_size_scale_mode', args);
  }
  public static function fontGetGenerateMipmaps(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_generate_mipmaps', args);
  }
  public static function fontGetGlobalOversampling(): Float {
      var args = new ArrayList();
      return getNative().call('font_get_global_oversampling', args);
  }
  public static function fontGetGlyphAdvance(fontRid: Variant, size: Int, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_advance', args);
  }
  public static function fontGetGlyphContours(font: Variant, size: Int, index: Int): Dictionary {
      var args = new ArrayList();
      args.append(font);
      args.append(size);
      args.append(index);
      return getNative().call('font_get_glyph_contours', args);
  }
  public static function fontGetGlyphIndex(fontRid: Variant, size: Int, char: Int, variationSelector: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(char);
      args.append(variationSelector);
      return getNative().call('font_get_glyph_index', args);
  }
  public static function fontGetGlyphList(fontRid: Variant, size: Vector2i): TypedArray<Int> {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_glyph_list', args);
  }
  public static function fontGetGlyphOffset(fontRid: Variant, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_offset', args);
  }
  public static function fontGetGlyphSize(fontRid: Variant, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_size', args);
  }
  public static function fontGetGlyphTextureIdx(fontRid: Variant, size: Vector2i, glyph: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_texture_idx', args);
  }
  public static function fontGetGlyphTextureRid(fontRid: Variant, size: Vector2i, glyph: Int): Variant {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_texture_rid', args);
  }
  public static function fontGetGlyphTextureSize(fontRid: Variant, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_texture_size', args);
  }
  public static function fontGetGlyphUvRect(fontRid: Variant, size: Vector2i, glyph: Int): Rect2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_uv_rect', args);
  }
  public static function fontGetHinting(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_hinting', args);
  }
  public static function fontGetKeepRoundingRemainders(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_keep_rounding_remainders', args);
  }
  public static function fontGetKerning(fontRid: Variant, size: Int, glyphPair: Vector2i): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphPair);
      return getNative().call('font_get_kerning', args);
  }
  public static function fontGetLanguageSupportOverride(fontRid: Variant, language: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      return getNative().call('font_get_language_support_override', args);
  }
  public static function fontGetLanguageSupportOverrides(fontRid: Variant): TypedArray<String> {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_language_support_overrides', args);
  }
  public static function fontGetMsdfPixelRange(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_msdf_pixel_range', args);
  }
  public static function fontGetMsdfSize(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_msdf_size', args);
  }
  public static function fontGetName(fontRid: Variant): String {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_name', args);
  }
  public static function fontGetOpentypeFeatureOverrides(fontRid: Variant): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_opentype_feature_overrides', args);
  }
  public static function fontGetOtNameStrings(fontRid: Variant): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_ot_name_strings', args);
  }
  public static function fontGetOversampling(fontRid: Variant): Float {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_oversampling', args);
  }
  public static function fontGetScale(fontRid: Variant, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_scale', args);
  }
  public static function fontGetScriptSupportOverride(fontRid: Variant, script: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      return getNative().call('font_get_script_support_override', args);
  }
  public static function fontGetScriptSupportOverrides(fontRid: Variant): TypedArray<String> {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_script_support_overrides', args);
  }
  public static function fontGetSpacing(fontRid: Variant, spacing: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(spacing);
      return getNative().call('font_get_spacing', args);
  }
  public static function fontGetStretch(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_stretch', args);
  }
  public static function fontGetStyle(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_style', args);
  }
  public static function fontGetStyleName(fontRid: Variant): String {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_style_name', args);
  }
  public static function fontGetSubpixelPositioning(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_subpixel_positioning', args);
  }
  public static function fontGetSupportedChars(fontRid: Variant): String {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_supported_chars', args);
  }
  public static function fontGetSupportedGlyphs(fontRid: Variant): TypedArray<Int> {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_supported_glyphs', args);
  }
  public static function fontGetTextureCount(fontRid: Variant, size: Vector2i): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_texture_count', args);
  }
  public static function fontGetTextureImage(fontRid: Variant, size: Vector2i, textureIndex: Int): Image {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      var ref: NativeReference = getNative().call('font_get_texture_image', args);
      return new Image(ref);
  }
  public static function fontGetTextureOffsets(fontRid: Variant, size: Vector2i, textureIndex: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      return getNative().call('font_get_texture_offsets', args);
  }
  public static function fontGetUnderlinePosition(fontRid: Variant, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_underline_position', args);
  }
  public static function fontGetUnderlineThickness(fontRid: Variant, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_underline_thickness', args);
  }
  public static function fontGetVariationCoordinates(fontRid: Variant): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_variation_coordinates', args);
  }
  public static function fontGetWeight(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_weight', args);
  }
  public static function fontHasChar(fontRid: Variant, char: Int): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(char);
      return getNative().call('font_has_char', args);
  }
  public static function fontIsAllowSystemFallback(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_allow_system_fallback', args);
  }
  public static function fontIsForceAutohinter(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_force_autohinter', args);
  }
  public static function fontIsLanguageSupported(fontRid: Variant, language: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      return getNative().call('font_is_language_supported', args);
  }
  public static function fontIsModulateColorGlyphs(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_modulate_color_glyphs', args);
  }
  public static function fontIsMultichannelSignedDistanceField(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_multichannel_signed_distance_field', args);
  }
  public static function fontIsScriptSupported(fontRid: Variant, script: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      return getNative().call('font_is_script_supported', args);
  }
  public static function fontRemoveGlyph(fontRid: Variant, size: Vector2i, glyph: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      getNative().call('font_remove_glyph', args);
  }
  public static function fontRemoveKerning(fontRid: Variant, size: Int, glyphPair: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphPair);
      getNative().call('font_remove_kerning', args);
  }
  public static function fontRemoveLanguageSupportOverride(fontRid: Variant, language: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      getNative().call('font_remove_language_support_override', args);
  }
  public static function fontRemoveScriptSupportOverride(fontRid: Variant, script: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      getNative().call('font_remove_script_support_override', args);
  }
  public static function fontRemoveSizeCache(fontRid: Variant, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_remove_size_cache', args);
  }
  public static function fontRemoveTexture(fontRid: Variant, size: Vector2i, textureIndex: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      getNative().call('font_remove_texture', args);
  }
  public static function fontRenderGlyph(fontRid: Variant, size: Vector2i, index: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(index);
      getNative().call('font_render_glyph', args);
  }
  public static function fontRenderRange(fontRid: Variant, size: Vector2i, start: Int, end: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(start);
      args.append(end);
      getNative().call('font_render_range', args);
  }
  public static function fontSetAllowSystemFallback(fontRid: Variant, allowSystemFallback: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(allowSystemFallback);
      getNative().call('font_set_allow_system_fallback', args);
  }
  public static function fontSetAntialiasing(fontRid: Variant, antialiasing: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(antialiasing);
      getNative().call('font_set_antialiasing', args);
  }
  public static function fontSetAscent(fontRid: Variant, size: Int, ascent: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(ascent);
      getNative().call('font_set_ascent', args);
  }
  public static function fontSetBaselineOffset(fontRid: Variant, baselineOffset: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(baselineOffset);
      getNative().call('font_set_baseline_offset', args);
  }
  public static function fontSetData(fontRid: Variant, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(data);
      getNative().call('font_set_data', args);
  }
  public static function fontSetDescent(fontRid: Variant, size: Int, descent: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(descent);
      getNative().call('font_set_descent', args);
  }
  public static function fontSetDisableEmbeddedBitmaps(fontRid: Variant, disableEmbeddedBitmaps: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(disableEmbeddedBitmaps);
      getNative().call('font_set_disable_embedded_bitmaps', args);
  }
  public static function fontSetEmbolden(fontRid: Variant, strength: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(strength);
      getNative().call('font_set_embolden', args);
  }
  public static function fontSetFaceIndex(fontRid: Variant, faceIndex: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(faceIndex);
      getNative().call('font_set_face_index', args);
  }
  public static function fontSetFixedSize(fontRid: Variant, fixedSize: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(fixedSize);
      getNative().call('font_set_fixed_size', args);
  }
  public static function fontSetFixedSizeScaleMode(fontRid: Variant, fixedSizeScaleMode: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(fixedSizeScaleMode);
      getNative().call('font_set_fixed_size_scale_mode', args);
  }
  public static function fontSetForceAutohinter(fontRid: Variant, forceAutohinter: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(forceAutohinter);
      getNative().call('font_set_force_autohinter', args);
  }
  public static function fontSetGenerateMipmaps(fontRid: Variant, generateMipmaps: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(generateMipmaps);
      getNative().call('font_set_generate_mipmaps', args);
  }
  public static function fontSetGlobalOversampling(oversampling: Float): Void {
      var args = new ArrayList();
      args.append(oversampling);
      getNative().call('font_set_global_oversampling', args);
  }
  public static function fontSetGlyphAdvance(fontRid: Variant, size: Int, glyph: Int, advance: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(advance);
      getNative().call('font_set_glyph_advance', args);
  }
  public static function fontSetGlyphOffset(fontRid: Variant, size: Vector2i, glyph: Int, offset: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(offset);
      getNative().call('font_set_glyph_offset', args);
  }
  public static function fontSetGlyphSize(fontRid: Variant, size: Vector2i, glyph: Int, glSize: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(glSize);
      getNative().call('font_set_glyph_size', args);
  }
  public static function fontSetGlyphTextureIdx(fontRid: Variant, size: Vector2i, glyph: Int, textureIdx: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(textureIdx);
      getNative().call('font_set_glyph_texture_idx', args);
  }
  public static function fontSetGlyphUvRect(fontRid: Variant, size: Vector2i, glyph: Int, uvRect: Rect2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(uvRect);
      getNative().call('font_set_glyph_uv_rect', args);
  }
  public static function fontSetHinting(fontRid: Variant, hinting: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(hinting);
      getNative().call('font_set_hinting', args);
  }
  public static function fontSetKeepRoundingRemainders(fontRid: Variant, keepRoundingRemainders: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(keepRoundingRemainders);
      getNative().call('font_set_keep_rounding_remainders', args);
  }
  public static function fontSetKerning(fontRid: Variant, size: Int, glyphPair: Vector2i, kerning: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphPair);
      args.append(kerning);
      getNative().call('font_set_kerning', args);
  }
  public static function fontSetLanguageSupportOverride(fontRid: Variant, language: String, supported: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      args.append(supported);
      getNative().call('font_set_language_support_override', args);
  }
  public static function fontSetModulateColorGlyphs(fontRid: Variant, forceAutohinter: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(forceAutohinter);
      getNative().call('font_set_modulate_color_glyphs', args);
  }
  public static function fontSetMsdfPixelRange(fontRid: Variant, msdfPixelRange: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(msdfPixelRange);
      getNative().call('font_set_msdf_pixel_range', args);
  }
  public static function fontSetMsdfSize(fontRid: Variant, msdfSize: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(msdfSize);
      getNative().call('font_set_msdf_size', args);
  }
  public static function fontSetMultichannelSignedDistanceField(fontRid: Variant, msdf: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(msdf);
      getNative().call('font_set_multichannel_signed_distance_field', args);
  }
  public static function fontSetName(fontRid: Variant, name: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(name);
      getNative().call('font_set_name', args);
  }
  public static function fontSetOpentypeFeatureOverrides(fontRid: Variant, overrides: Dictionary): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(overrides);
      getNative().call('font_set_opentype_feature_overrides', args);
  }
  public static function fontSetOversampling(fontRid: Variant, oversampling: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(oversampling);
      getNative().call('font_set_oversampling', args);
  }
  public static function fontSetScale(fontRid: Variant, size: Int, scale: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(scale);
      getNative().call('font_set_scale', args);
  }
  public static function fontSetScriptSupportOverride(fontRid: Variant, script: String, supported: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      args.append(supported);
      getNative().call('font_set_script_support_override', args);
  }
  public static function fontSetSpacing(fontRid: Variant, spacing: Int, value: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(spacing);
      args.append(value);
      getNative().call('font_set_spacing', args);
  }
  public static function fontSetStretch(fontRid: Variant, weight: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(weight);
      getNative().call('font_set_stretch', args);
  }
  public static function fontSetStyle(fontRid: Variant, style: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(style);
      getNative().call('font_set_style', args);
  }
  public static function fontSetStyleName(fontRid: Variant, name: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(name);
      getNative().call('font_set_style_name', args);
  }
  public static function fontSetSubpixelPositioning(fontRid: Variant, subpixelPositioning: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(subpixelPositioning);
      getNative().call('font_set_subpixel_positioning', args);
  }
  public static function fontSetTextureImage(fontRid: Variant, size: Vector2i, textureIndex: Int, image: Image): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      args.append(image.native);
      getNative().call('font_set_texture_image', args);
  }
  public static function fontSetTextureOffsets(fontRid: Variant, size: Vector2i, textureIndex: Int, offset: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      args.append(offset);
      getNative().call('font_set_texture_offsets', args);
  }
  public static function fontSetTransform(fontRid: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(transform);
      getNative().call('font_set_transform', args);
  }
  public static function fontSetUnderlinePosition(fontRid: Variant, size: Int, underlinePosition: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(underlinePosition);
      getNative().call('font_set_underline_position', args);
  }
  public static function fontSetUnderlineThickness(fontRid: Variant, size: Int, underlineThickness: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(underlineThickness);
      getNative().call('font_set_underline_thickness', args);
  }
  public static function fontSetVariationCoordinates(fontRid: Variant, variationCoordinates: Dictionary): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(variationCoordinates);
      getNative().call('font_set_variation_coordinates', args);
  }
  public static function fontSetWeight(fontRid: Variant, weight: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(weight);
      getNative().call('font_set_weight', args);
  }
  public static function fontSupportedFeatureList(fontRid: Variant): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_supported_feature_list', args);
  }
  public static function fontSupportedVariationList(fontRid: Variant): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_supported_variation_list', args);
  }
  public static function formatNumber(number: String, ?language: String): String {
      var args = new ArrayList();
      args.append(number);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('format_number', args);
  }
  public static function freeRid(rid: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('free_rid', args);
  }
  public static function getFeatures(): Int {
      var args = new ArrayList();
      return getNative().call('get_features', args);
  }
  public static function getHexCodeBoxSize(size: Int, index: Int): Vector2 {
      var args = new ArrayList();
      args.append(size);
      args.append(index);
      return getNative().call('get_hex_code_box_size', args);
  }
  public static function getName(): String {
      var args = new ArrayList();
      return getNative().call('get_name', args);
  }
  public static function getSupportData(): ByteArray {
      var args = new ArrayList();
      return getNative().call('get_support_data', args);
  }
  public static function getSupportDataFilename(): String {
      var args = new ArrayList();
      return getNative().call('get_support_data_filename', args);
  }
  public static function getSupportDataInfo(): String {
      var args = new ArrayList();
      return getNative().call('get_support_data_info', args);
  }
  public static function has(rid: Variant): Bool {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('has', args);
  }
  public static function hasFeature(feature: Int): Bool {
      var args = new ArrayList();
      args.append(feature);
      return getNative().call('has_feature', args);
  }
  public static function isConfusable(string: String, dict: TypedArray<String>): Int {
      var args = new ArrayList();
      args.append(string);
      args.append(dict);
      return getNative().call('is_confusable', args);
  }
  public static function isLocaleRightToLeft(locale: String): Bool {
      var args = new ArrayList();
      args.append(locale);
      return getNative().call('is_locale_right_to_left', args);
  }
  public static function isValidIdentifier(string: String): Bool {
      var args = new ArrayList();
      args.append(string);
      return getNative().call('is_valid_identifier', args);
  }
  public static function isValidLetter(unicode: Int): Bool {
      var args = new ArrayList();
      args.append(unicode);
      return getNative().call('is_valid_letter', args);
  }
  public static function loadSupportData(filename: String): Bool {
      var args = new ArrayList();
      args.append(filename);
      return getNative().call('load_support_data', args);
  }
  public static function nameToTag(name: String): Int {
      var args = new ArrayList();
      args.append(name);
      return getNative().call('name_to_tag', args);
  }
  public static function parseNumber(number: String, ?language: String): String {
      var args = new ArrayList();
      args.append(number);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('parse_number', args);
  }
  public static function percentSign(?language: String): String {
      var args = new ArrayList();
      if (language != null) {
          args.append(language);
      }
      return getNative().call('percent_sign', args);
  }
  public static function saveSupportData(filename: String): Bool {
      var args = new ArrayList();
      args.append(filename);
      return getNative().call('save_support_data', args);
  }
  public static function shapedGetRunCount(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_get_run_count', args);
  }
  public static function shapedGetRunDirection(shaped: Variant, index: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_direction', args);
  }
  public static function shapedGetRunFontRid(shaped: Variant, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_font_rid', args);
  }
  public static function shapedGetRunFontSize(shaped: Variant, index: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_font_size', args);
  }
  public static function shapedGetRunLanguage(shaped: Variant, index: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_language', args);
  }
  public static function shapedGetRunObject(shaped: Variant, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_object', args);
  }
  public static function shapedGetRunRange(shaped: Variant, index: Int): Vector2i {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_range', args);
  }
  public static function shapedGetRunText(shaped: Variant, index: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_text', args);
  }
  public static function shapedGetSpanCount(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_get_span_count', args);
  }
  public static function shapedGetSpanEmbeddedObject(shaped: Variant, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_embedded_object', args);
  }
  public static function shapedGetSpanMeta(shaped: Variant, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_meta', args);
  }
  public static function shapedGetSpanObject(shaped: Variant, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_object', args);
  }
  public static function shapedGetSpanText(shaped: Variant, index: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_text', args);
  }
  public static function shapedGetText(shaped: Variant): String {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_get_text', args);
  }
  public static function shapedSetSpanUpdateFont(shaped: Variant, index: Int, fonts: Variant, size: Int, ?opentypeFeatures: Dictionary): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      args.append(fonts);
      args.append(size);
      if (opentypeFeatures != null) {
          args.append(opentypeFeatures);
      }
      getNative().call('shaped_set_span_update_font', args);
  }
  public static function shapedTextAddObject(shaped: Variant, key: Variant, size: Vector2, ?inlineAlign: Int, ?length: Int, ?baseline: Float): Bool {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      args.append(size);
      if (inlineAlign != null) {
          args.append(inlineAlign);
      }
      if (length != null) {
          args.append(length);
      }
      if (baseline != null) {
          args.append(baseline);
      }
      return getNative().call('shaped_text_add_object', args);
  }
  public static function shapedTextAddString(shaped: Variant, text: String, fonts: Variant, size: Int, ?opentypeFeatures: Dictionary, ?language: String, ?meta: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      args.append(text);
      args.append(fonts);
      args.append(size);
      if (opentypeFeatures != null) {
          args.append(opentypeFeatures);
      }
      if (language != null) {
          args.append(language);
      }
      if (meta != null) {
          args.append(meta);
      }
      return getNative().call('shaped_text_add_string', args);
  }
  public static function shapedTextClear(rid: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('shaped_text_clear', args);
  }
  public static function shapedTextClosestCharacterPos(shaped: Variant, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_closest_character_pos', args);
  }
  public static function shapedTextDraw(shaped: Variant, canvas: Variant, pos: Vector2, ?clipL: Float, ?clipR: Float, ?color: Color, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(canvas);
      args.append(pos);
      if (clipL != null) {
          args.append(clipL);
      }
      if (clipR != null) {
          args.append(clipR);
      }
      if (color != null) {
          args.append(color);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      getNative().call('shaped_text_draw', args);
  }
  public static function shapedTextDrawOutline(shaped: Variant, canvas: Variant, pos: Vector2, ?clipL: Float, ?clipR: Float, ?outlineSize: Int, ?color: Color, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(canvas);
      args.append(pos);
      if (clipL != null) {
          args.append(clipL);
      }
      if (clipR != null) {
          args.append(clipR);
      }
      if (outlineSize != null) {
          args.append(outlineSize);
      }
      if (color != null) {
          args.append(color);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      getNative().call('shaped_text_draw_outline', args);
  }
  public static function shapedTextFitToWidth(shaped: Variant, width: Float, ?justificationFlags: Int): Float {
      var args = new ArrayList();
      args.append(shaped);
      args.append(width);
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      return getNative().call('shaped_text_fit_to_width', args);
  }
  public static function shapedTextGetAscent(shaped: Variant): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_ascent', args);
  }
  public static function shapedTextGetCarets(shaped: Variant, position: Int): Dictionary {
      var args = new ArrayList();
      args.append(shaped);
      args.append(position);
      return getNative().call('shaped_text_get_carets', args);
  }
  public static function shapedTextGetCharacterBreaks(shaped: Variant): TypedArray<Int> {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_character_breaks', args);
  }
  public static function shapedTextGetCustomEllipsis(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_custom_ellipsis', args);
  }
  public static function shapedTextGetCustomPunctuation(shaped: Variant): String {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_custom_punctuation', args);
  }
  public static function shapedTextGetDescent(shaped: Variant): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_descent', args);
  }
  public static function shapedTextGetDirection(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_direction', args);
  }
  public static function shapedTextGetDominantDirectionInRange(shaped: Variant, start: Int, end: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(start);
      args.append(end);
      return getNative().call('shaped_text_get_dominant_direction_in_range', args);
  }
  public static function shapedTextGetEllipsisGlyphCount(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_ellipsis_glyph_count', args);
  }
  public static function shapedTextGetEllipsisPos(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_ellipsis_pos', args);
  }
  public static function shapedTextGetGlyphCount(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_glyph_count', args);
  }
  public static function shapedTextGetGraphemeBounds(shaped: Variant, pos: Int): Vector2 {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_get_grapheme_bounds', args);
  }
  public static function shapedTextGetInferredDirection(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_inferred_direction', args);
  }
  public static function shapedTextGetLineBreaks(shaped: Variant, width: Float, ?start: Int, ?breakFlags: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(shaped);
      args.append(width);
      if (start != null) {
          args.append(start);
      }
      if (breakFlags != null) {
          args.append(breakFlags);
      }
      return getNative().call('shaped_text_get_line_breaks', args);
  }
  public static function shapedTextGetLineBreaksAdv(shaped: Variant, width: TypedArray<Float>, ?start: Int, ?once: Bool, ?breakFlags: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(shaped);
      args.append(width);
      if (start != null) {
          args.append(start);
      }
      if (once != null) {
          args.append(once);
      }
      if (breakFlags != null) {
          args.append(breakFlags);
      }
      return getNative().call('shaped_text_get_line_breaks_adv', args);
  }
  public static function shapedTextGetObjectGlyph(shaped: Variant, key: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      return getNative().call('shaped_text_get_object_glyph', args);
  }
  public static function shapedTextGetObjectRange(shaped: Variant, key: Variant): Vector2i {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      return getNative().call('shaped_text_get_object_range', args);
  }
  public static function shapedTextGetObjectRect(shaped: Variant, key: Variant): Rect2 {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      return getNative().call('shaped_text_get_object_rect', args);
  }
  public static function shapedTextGetObjects(shaped: Variant): ArrayList {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_objects', args);
  }
  public static function shapedTextGetOrientation(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_orientation', args);
  }
  public static function shapedTextGetParent(shaped: Variant): Variant {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_parent', args);
  }
  public static function shapedTextGetPreserveControl(shaped: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_preserve_control', args);
  }
  public static function shapedTextGetPreserveInvalid(shaped: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_preserve_invalid', args);
  }
  public static function shapedTextGetRange(shaped: Variant): Vector2i {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_range', args);
  }
  public static function shapedTextGetSelection(shaped: Variant, start: Int, end: Int): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(shaped);
      args.append(start);
      args.append(end);
      return getNative().call('shaped_text_get_selection', args);
  }
  public static function shapedTextGetSize(shaped: Variant): Vector2 {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_size', args);
  }
  public static function shapedTextGetSpacing(shaped: Variant, spacing: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(spacing);
      return getNative().call('shaped_text_get_spacing', args);
  }
  public static function shapedTextGetTrimPos(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_trim_pos', args);
  }
  public static function shapedTextGetUnderlinePosition(shaped: Variant): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_underline_position', args);
  }
  public static function shapedTextGetUnderlineThickness(shaped: Variant): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_underline_thickness', args);
  }
  public static function shapedTextGetWidth(shaped: Variant): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_width', args);
  }
  public static function shapedTextGetWordBreaks(shaped: Variant, ?graphemeFlags: Int, ?skipGraphemeFlags: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(shaped);
      if (graphemeFlags != null) {
          args.append(graphemeFlags);
      }
      if (skipGraphemeFlags != null) {
          args.append(skipGraphemeFlags);
      }
      return getNative().call('shaped_text_get_word_breaks', args);
  }
  public static function shapedTextHasVisibleChars(shaped: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_has_visible_chars', args);
  }
  public static function shapedTextHitTestGrapheme(shaped: Variant, coords: Float): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(coords);
      return getNative().call('shaped_text_hit_test_grapheme', args);
  }
  public static function shapedTextHitTestPosition(shaped: Variant, coords: Float): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(coords);
      return getNative().call('shaped_text_hit_test_position', args);
  }
  public static function shapedTextIsReady(shaped: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_is_ready', args);
  }
  public static function shapedTextNextCharacterPos(shaped: Variant, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_next_character_pos', args);
  }
  public static function shapedTextNextGraphemePos(shaped: Variant, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_next_grapheme_pos', args);
  }
  public static function shapedTextOverrunTrimToWidth(shaped: Variant, ?width: Float, ?overrunTrimFlags: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      if (width != null) {
          args.append(width);
      }
      if (overrunTrimFlags != null) {
          args.append(overrunTrimFlags);
      }
      getNative().call('shaped_text_overrun_trim_to_width', args);
  }
  public static function shapedTextPrevCharacterPos(shaped: Variant, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_prev_character_pos', args);
  }
  public static function shapedTextPrevGraphemePos(shaped: Variant, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_prev_grapheme_pos', args);
  }
  public static function shapedTextResizeObject(shaped: Variant, key: Variant, size: Vector2, ?inlineAlign: Int, ?baseline: Float): Bool {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      args.append(size);
      if (inlineAlign != null) {
          args.append(inlineAlign);
      }
      if (baseline != null) {
          args.append(baseline);
      }
      return getNative().call('shaped_text_resize_object', args);
  }
  public static function shapedTextSetBidiOverride(shaped: Variant, pOverride: ArrayList): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pOverride);
      getNative().call('shaped_text_set_bidi_override', args);
  }
  public static function shapedTextSetCustomEllipsis(shaped: Variant, char: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(char);
      getNative().call('shaped_text_set_custom_ellipsis', args);
  }
  public static function shapedTextSetCustomPunctuation(shaped: Variant, punct: String): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(punct);
      getNative().call('shaped_text_set_custom_punctuation', args);
  }
  public static function shapedTextSetDirection(shaped: Variant, ?direction: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      if (direction != null) {
          args.append(direction);
      }
      getNative().call('shaped_text_set_direction', args);
  }
  public static function shapedTextSetOrientation(shaped: Variant, ?orientation: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      if (orientation != null) {
          args.append(orientation);
      }
      getNative().call('shaped_text_set_orientation', args);
  }
  public static function shapedTextSetPreserveControl(shaped: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(enabled);
      getNative().call('shaped_text_set_preserve_control', args);
  }
  public static function shapedTextSetPreserveInvalid(shaped: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(enabled);
      getNative().call('shaped_text_set_preserve_invalid', args);
  }
  public static function shapedTextSetSpacing(shaped: Variant, spacing: Int, value: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(spacing);
      args.append(value);
      getNative().call('shaped_text_set_spacing', args);
  }
  public static function shapedTextShape(shaped: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_shape', args);
  }
  public static function shapedTextSubstr(shaped: Variant, start: Int, length: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(start);
      args.append(length);
      return getNative().call('shaped_text_substr', args);
  }
  public static function shapedTextTabAlign(shaped: Variant, tabStops: TypedArray<Float>): Float {
      var args = new ArrayList();
      args.append(shaped);
      args.append(tabStops);
      return getNative().call('shaped_text_tab_align', args);
  }
  public static function spoofCheck(string: String): Bool {
      var args = new ArrayList();
      args.append(string);
      return getNative().call('spoof_check', args);
  }
  public static function stringGetCharacterBreaks(string: String, ?language: String): TypedArray<Int> {
      var args = new ArrayList();
      args.append(string);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('string_get_character_breaks', args);
  }
  public static function stringGetWordBreaks(string: String, ?language: String, ?charsPerLine: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(string);
      if (language != null) {
          args.append(language);
      }
      if (charsPerLine != null) {
          args.append(charsPerLine);
      }
      return getNative().call('string_get_word_breaks', args);
  }
  public static function stringToLower(string: String, ?language: String): String {
      var args = new ArrayList();
      args.append(string);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('string_to_lower', args);
  }
  public static function stringToTitle(string: String, ?language: String): String {
      var args = new ArrayList();
      args.append(string);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('string_to_title', args);
  }
  public static function stringToUpper(string: String, ?language: String): String {
      var args = new ArrayList();
      args.append(string);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('string_to_upper', args);
  }
  public static function stripDiacritics(string: String): String {
      var args = new ArrayList();
      args.append(string);
      return getNative().call('strip_diacritics', args);
  }
  public static function tagToName(tag: Int): String {
      var args = new ArrayList();
      args.append(tag);
      return getNative().call('tag_to_name', args);
  }
}
