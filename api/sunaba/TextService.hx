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
            _native = NativeObject.getService('TextService');
        }
        return _native;
    }



  public function createFont(): Int {
      var args = new ArrayList();
      return getNative().call('create_font', args);
  }
  public function createFontLinkedVariation(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('create_font_linked_variation', args);
  }
  public function createShapedText(?direction: Int, ?orientation: Int): Int {
      var args = new ArrayList();
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      return getNative().call('create_shaped_text', args);
  }
  public function drawHexCodeBox(canvas: Int, size: Int, pos: Vector2, index: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(canvas);
      args.append(size);
      args.append(pos);
      args.append(index);
      args.append(color);
      getNative().call('draw_hex_code_box', args);
  }
  public function fontClearGlyphs(fontRid: Int, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_clear_glyphs', args);
  }
  public function fontClearKerningMap(fontRid: Int, size: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_clear_kerning_map', args);
  }
  public function fontClearSizeCache(fontRid: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      getNative().call('font_clear_size_cache', args);
  }
  public function fontClearSystemFallbackCache(): Void {
      var args = new ArrayList();
      getNative().call('font_clear_system_fallback_cache', args);
  }
  public function fontClearTextures(fontRid: Int, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_clear_textures', args);
  }
  public function fontDrawGlyph(fontRid: Int, canvas: Int, size: Int, pos: Vector2, index: Int, ?color: Color, ?oversampling: Float): Void {
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
  public function fontDrawGlyphOutline(fontRid: Int, canvas: Int, size: Int, outlineSize: Int, pos: Vector2, index: Int, ?color: Color, ?oversampling: Float): Void {
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
  public function fontGetAntialiasing(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_antialiasing', args);
  }
  public function fontGetAscent(fontRid: Int, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_ascent', args);
  }
  public function fontGetBaselineOffset(fontRid: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_baseline_offset', args);
  }
  public function fontGetCharFromGlyphIndex(fontRid: Int, size: Int, glyphIndex: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphIndex);
      return getNative().call('font_get_char_from_glyph_index', args);
  }
  public function fontGetDescent(fontRid: Int, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_descent', args);
  }
  public function fontGetDisableEmbeddedBitmaps(fontRid: Int): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_disable_embedded_bitmaps', args);
  }
  public function fontGetEmbolden(fontRid: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_embolden', args);
  }
  public function fontGetFaceCount(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_face_count', args);
  }
  public function fontGetFaceIndex(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_face_index', args);
  }
  public function fontGetFixedSize(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_fixed_size', args);
  }
  public function fontGetFixedSizeScaleMode(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_fixed_size_scale_mode', args);
  }
  public function fontGetGenerateMipmaps(fontRid: Int): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_generate_mipmaps', args);
  }
  public function fontGetGlobalOversampling(): Float {
      var args = new ArrayList();
      return getNative().call('font_get_global_oversampling', args);
  }
  public function fontGetGlyphAdvance(fontRid: Int, size: Int, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_advance', args);
  }
  public function fontGetGlyphContours(font: Int, size: Int, index: Int): Dictionary {
      var args = new ArrayList();
      args.append(font);
      args.append(size);
      args.append(index);
      return getNative().call('font_get_glyph_contours', args);
  }
  public function fontGetGlyphIndex(fontRid: Int, size: Int, char: Int, variationSelector: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(char);
      args.append(variationSelector);
      return getNative().call('font_get_glyph_index', args);
  }
  public function fontGetGlyphList(fontRid: Int, size: Vector2i): TypedArray<Int> {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_glyph_list', args);
  }
  public function fontGetGlyphOffset(fontRid: Int, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_offset', args);
  }
  public function fontGetGlyphSize(fontRid: Int, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_size', args);
  }
  public function fontGetGlyphTextureIdx(fontRid: Int, size: Vector2i, glyph: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_texture_idx', args);
  }
  public function fontGetGlyphTextureRid(fontRid: Int, size: Vector2i, glyph: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_texture_rid', args);
  }
  public function fontGetGlyphTextureSize(fontRid: Int, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_texture_size', args);
  }
  public function fontGetGlyphUvRect(fontRid: Int, size: Vector2i, glyph: Int): Rect2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_uv_rect', args);
  }
  public function fontGetHinting(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_hinting', args);
  }
  public function fontGetKeepRoundingRemainders(fontRid: Int): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_keep_rounding_remainders', args);
  }
  public function fontGetKerning(fontRid: Int, size: Int, glyphPair: Vector2i): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphPair);
      return getNative().call('font_get_kerning', args);
  }
  public function fontGetLanguageSupportOverride(fontRid: Int, language: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      return getNative().call('font_get_language_support_override', args);
  }
  public function fontGetLanguageSupportOverrides(fontRid: Int): TypedArray<String> {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_language_support_overrides', args);
  }
  public function fontGetMsdfPixelRange(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_msdf_pixel_range', args);
  }
  public function fontGetMsdfSize(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_msdf_size', args);
  }
  public function fontGetName(fontRid: Int): String {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_name', args);
  }
  public function fontGetOpentypeFeatureOverrides(fontRid: Int): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_opentype_feature_overrides', args);
  }
  public function fontGetOtNameStrings(fontRid: Int): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_ot_name_strings', args);
  }
  public function fontGetOversampling(fontRid: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_oversampling', args);
  }
  public function fontGetScale(fontRid: Int, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_scale', args);
  }
  public function fontGetScriptSupportOverride(fontRid: Int, script: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      return getNative().call('font_get_script_support_override', args);
  }
  public function fontGetScriptSupportOverrides(fontRid: Int): TypedArray<String> {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_script_support_overrides', args);
  }
  public function fontGetSpacing(fontRid: Int, spacing: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(spacing);
      return getNative().call('font_get_spacing', args);
  }
  public function fontGetStretch(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_stretch', args);
  }
  public function fontGetStyle(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_style', args);
  }
  public function fontGetStyleName(fontRid: Int): String {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_style_name', args);
  }
  public function fontGetSubpixelPositioning(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_subpixel_positioning', args);
  }
  public function fontGetSupportedChars(fontRid: Int): String {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_supported_chars', args);
  }
  public function fontGetSupportedGlyphs(fontRid: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_supported_glyphs', args);
  }
  public function fontGetTextureCount(fontRid: Int, size: Vector2i): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_texture_count', args);
  }
  public function fontGetTextureImage(fontRid: Int, size: Vector2i, textureIndex: Int): Image {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      var ref: NativeReference = getNative().call('font_get_texture_image', args);
      return new Image(ref);
  }
  public function fontGetTextureOffsets(fontRid: Int, size: Vector2i, textureIndex: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      return getNative().call('font_get_texture_offsets', args);
  }
  public function fontGetUnderlinePosition(fontRid: Int, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_underline_position', args);
  }
  public function fontGetUnderlineThickness(fontRid: Int, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_underline_thickness', args);
  }
  public function fontGetVariationCoordinates(fontRid: Int): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_variation_coordinates', args);
  }
  public function fontGetWeight(fontRid: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_weight', args);
  }
  public function fontHasChar(fontRid: Int, char: Int): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(char);
      return getNative().call('font_has_char', args);
  }
  public function fontIsAllowSystemFallback(fontRid: Int): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_allow_system_fallback', args);
  }
  public function fontIsForceAutohinter(fontRid: Int): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_force_autohinter', args);
  }
  public function fontIsLanguageSupported(fontRid: Int, language: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      return getNative().call('font_is_language_supported', args);
  }
  public function fontIsModulateColorGlyphs(fontRid: Int): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_modulate_color_glyphs', args);
  }
  public function fontIsMultichannelSignedDistanceField(fontRid: Int): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_multichannel_signed_distance_field', args);
  }
  public function fontIsScriptSupported(fontRid: Int, script: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      return getNative().call('font_is_script_supported', args);
  }
  public function fontRemoveGlyph(fontRid: Int, size: Vector2i, glyph: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      getNative().call('font_remove_glyph', args);
  }
  public function fontRemoveKerning(fontRid: Int, size: Int, glyphPair: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphPair);
      getNative().call('font_remove_kerning', args);
  }
  public function fontRemoveLanguageSupportOverride(fontRid: Int, language: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      getNative().call('font_remove_language_support_override', args);
  }
  public function fontRemoveScriptSupportOverride(fontRid: Int, script: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      getNative().call('font_remove_script_support_override', args);
  }
  public function fontRemoveSizeCache(fontRid: Int, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_remove_size_cache', args);
  }
  public function fontRemoveTexture(fontRid: Int, size: Vector2i, textureIndex: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      getNative().call('font_remove_texture', args);
  }
  public function fontRenderGlyph(fontRid: Int, size: Vector2i, index: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(index);
      getNative().call('font_render_glyph', args);
  }
  public function fontRenderRange(fontRid: Int, size: Vector2i, start: Int, end: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(start);
      args.append(end);
      getNative().call('font_render_range', args);
  }
  public function fontSetAllowSystemFallback(fontRid: Int, allowSystemFallback: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(allowSystemFallback);
      getNative().call('font_set_allow_system_fallback', args);
  }
  public function fontSetAntialiasing(fontRid: Int, antialiasing: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(antialiasing);
      getNative().call('font_set_antialiasing', args);
  }
  public function fontSetAscent(fontRid: Int, size: Int, ascent: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(ascent);
      getNative().call('font_set_ascent', args);
  }
  public function fontSetBaselineOffset(fontRid: Int, baselineOffset: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(baselineOffset);
      getNative().call('font_set_baseline_offset', args);
  }
  public function fontSetData(fontRid: Int, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(data);
      getNative().call('font_set_data', args);
  }
  public function fontSetDescent(fontRid: Int, size: Int, descent: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(descent);
      getNative().call('font_set_descent', args);
  }
  public function fontSetDisableEmbeddedBitmaps(fontRid: Int, disableEmbeddedBitmaps: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(disableEmbeddedBitmaps);
      getNative().call('font_set_disable_embedded_bitmaps', args);
  }
  public function fontSetEmbolden(fontRid: Int, strength: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(strength);
      getNative().call('font_set_embolden', args);
  }
  public function fontSetFaceIndex(fontRid: Int, faceIndex: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(faceIndex);
      getNative().call('font_set_face_index', args);
  }
  public function fontSetFixedSize(fontRid: Int, fixedSize: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(fixedSize);
      getNative().call('font_set_fixed_size', args);
  }
  public function fontSetFixedSizeScaleMode(fontRid: Int, fixedSizeScaleMode: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(fixedSizeScaleMode);
      getNative().call('font_set_fixed_size_scale_mode', args);
  }
  public function fontSetForceAutohinter(fontRid: Int, forceAutohinter: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(forceAutohinter);
      getNative().call('font_set_force_autohinter', args);
  }
  public function fontSetGenerateMipmaps(fontRid: Int, generateMipmaps: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(generateMipmaps);
      getNative().call('font_set_generate_mipmaps', args);
  }
  public function fontSetGlobalOversampling(oversampling: Float): Void {
      var args = new ArrayList();
      args.append(oversampling);
      getNative().call('font_set_global_oversampling', args);
  }
  public function fontSetGlyphAdvance(fontRid: Int, size: Int, glyph: Int, advance: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(advance);
      getNative().call('font_set_glyph_advance', args);
  }
  public function fontSetGlyphOffset(fontRid: Int, size: Vector2i, glyph: Int, offset: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(offset);
      getNative().call('font_set_glyph_offset', args);
  }
  public function fontSetGlyphSize(fontRid: Int, size: Vector2i, glyph: Int, glSize: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(glSize);
      getNative().call('font_set_glyph_size', args);
  }
  public function fontSetGlyphTextureIdx(fontRid: Int, size: Vector2i, glyph: Int, textureIdx: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(textureIdx);
      getNative().call('font_set_glyph_texture_idx', args);
  }
  public function fontSetGlyphUvRect(fontRid: Int, size: Vector2i, glyph: Int, uvRect: Rect2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(uvRect);
      getNative().call('font_set_glyph_uv_rect', args);
  }
  public function fontSetHinting(fontRid: Int, hinting: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(hinting);
      getNative().call('font_set_hinting', args);
  }
  public function fontSetKeepRoundingRemainders(fontRid: Int, keepRoundingRemainders: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(keepRoundingRemainders);
      getNative().call('font_set_keep_rounding_remainders', args);
  }
  public function fontSetKerning(fontRid: Int, size: Int, glyphPair: Vector2i, kerning: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphPair);
      args.append(kerning);
      getNative().call('font_set_kerning', args);
  }
  public function fontSetLanguageSupportOverride(fontRid: Int, language: String, supported: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      args.append(supported);
      getNative().call('font_set_language_support_override', args);
  }
  public function fontSetModulateColorGlyphs(fontRid: Int, forceAutohinter: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(forceAutohinter);
      getNative().call('font_set_modulate_color_glyphs', args);
  }
  public function fontSetMsdfPixelRange(fontRid: Int, msdfPixelRange: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(msdfPixelRange);
      getNative().call('font_set_msdf_pixel_range', args);
  }
  public function fontSetMsdfSize(fontRid: Int, msdfSize: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(msdfSize);
      getNative().call('font_set_msdf_size', args);
  }
  public function fontSetMultichannelSignedDistanceField(fontRid: Int, msdf: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(msdf);
      getNative().call('font_set_multichannel_signed_distance_field', args);
  }
  public function fontSetName(fontRid: Int, name: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(name);
      getNative().call('font_set_name', args);
  }
  public function fontSetOpentypeFeatureOverrides(fontRid: Int, overrides: Dictionary): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(overrides);
      getNative().call('font_set_opentype_feature_overrides', args);
  }
  public function fontSetOversampling(fontRid: Int, oversampling: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(oversampling);
      getNative().call('font_set_oversampling', args);
  }
  public function fontSetScale(fontRid: Int, size: Int, scale: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(scale);
      getNative().call('font_set_scale', args);
  }
  public function fontSetScriptSupportOverride(fontRid: Int, script: String, supported: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      args.append(supported);
      getNative().call('font_set_script_support_override', args);
  }
  public function fontSetSpacing(fontRid: Int, spacing: Int, value: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(spacing);
      args.append(value);
      getNative().call('font_set_spacing', args);
  }
  public function fontSetStretch(fontRid: Int, weight: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(weight);
      getNative().call('font_set_stretch', args);
  }
  public function fontSetStyle(fontRid: Int, style: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(style);
      getNative().call('font_set_style', args);
  }
  public function fontSetStyleName(fontRid: Int, name: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(name);
      getNative().call('font_set_style_name', args);
  }
  public function fontSetSubpixelPositioning(fontRid: Int, subpixelPositioning: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(subpixelPositioning);
      getNative().call('font_set_subpixel_positioning', args);
  }
  public function fontSetTextureImage(fontRid: Int, size: Vector2i, textureIndex: Int, image: Image): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      args.append(image.native);
      getNative().call('font_set_texture_image', args);
  }
  public function fontSetTextureOffsets(fontRid: Int, size: Vector2i, textureIndex: Int, offset: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      args.append(offset);
      getNative().call('font_set_texture_offsets', args);
  }
  public function fontSetTransform(fontRid: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(transform);
      getNative().call('font_set_transform', args);
  }
  public function fontSetUnderlinePosition(fontRid: Int, size: Int, underlinePosition: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(underlinePosition);
      getNative().call('font_set_underline_position', args);
  }
  public function fontSetUnderlineThickness(fontRid: Int, size: Int, underlineThickness: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(underlineThickness);
      getNative().call('font_set_underline_thickness', args);
  }
  public function fontSetVariationCoordinates(fontRid: Int, variationCoordinates: Dictionary): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(variationCoordinates);
      getNative().call('font_set_variation_coordinates', args);
  }
  public function fontSetWeight(fontRid: Int, weight: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(weight);
      getNative().call('font_set_weight', args);
  }
  public function fontSupportedFeatureList(fontRid: Int): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_supported_feature_list', args);
  }
  public function fontSupportedVariationList(fontRid: Int): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_supported_variation_list', args);
  }
  public function formatNumber(number: String, ?language: String): String {
      var args = new ArrayList();
      args.append(number);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('format_number', args);
  }
  public function freeRid(rid: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('free_rid', args);
  }
  public function getFeatures(): Int {
      var args = new ArrayList();
      return getNative().call('get_features', args);
  }
  public function getHexCodeBoxSize(size: Int, index: Int): Vector2 {
      var args = new ArrayList();
      args.append(size);
      args.append(index);
      return getNative().call('get_hex_code_box_size', args);
  }
  public function getName(): String {
      var args = new ArrayList();
      return getNative().call('get_name', args);
  }
  public function getSupportData(): ByteArray {
      var args = new ArrayList();
      return getNative().call('get_support_data', args);
  }
  public function getSupportDataFilename(): String {
      var args = new ArrayList();
      return getNative().call('get_support_data_filename', args);
  }
  public function getSupportDataInfo(): String {
      var args = new ArrayList();
      return getNative().call('get_support_data_info', args);
  }
  public function has(rid: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('has', args);
  }
  public function hasFeature(feature: Int): Bool {
      var args = new ArrayList();
      args.append(feature);
      return getNative().call('has_feature', args);
  }
  public function isConfusable(string: String, dict: TypedArray<String>): Int {
      var args = new ArrayList();
      args.append(string);
      args.append(dict);
      return getNative().call('is_confusable', args);
  }
  public function isLocaleRightToLeft(locale: String): Bool {
      var args = new ArrayList();
      args.append(locale);
      return getNative().call('is_locale_right_to_left', args);
  }
  public function isValidIdentifier(string: String): Bool {
      var args = new ArrayList();
      args.append(string);
      return getNative().call('is_valid_identifier', args);
  }
  public function isValidLetter(unicode: Int): Bool {
      var args = new ArrayList();
      args.append(unicode);
      return getNative().call('is_valid_letter', args);
  }
  public function loadSupportData(filename: String): Bool {
      var args = new ArrayList();
      args.append(filename);
      return getNative().call('load_support_data', args);
  }
  public function nameToTag(name: String): Int {
      var args = new ArrayList();
      args.append(name);
      return getNative().call('name_to_tag', args);
  }
  public function parseNumber(number: String, ?language: String): String {
      var args = new ArrayList();
      args.append(number);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('parse_number', args);
  }
  public function percentSign(?language: String): String {
      var args = new ArrayList();
      if (language != null) {
          args.append(language);
      }
      return getNative().call('percent_sign', args);
  }
  public function saveSupportData(filename: String): Bool {
      var args = new ArrayList();
      args.append(filename);
      return getNative().call('save_support_data', args);
  }
  public function shapedGetRunCount(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_get_run_count', args);
  }
  public function shapedGetRunDirection(shaped: Int, index: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_direction', args);
  }
  public function shapedGetRunFontRid(shaped: Int, index: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_font_rid', args);
  }
  public function shapedGetRunFontSize(shaped: Int, index: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_font_size', args);
  }
  public function shapedGetRunLanguage(shaped: Int, index: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_language', args);
  }
  public function shapedGetRunObject(shaped: Int, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_object', args);
  }
  public function shapedGetRunRange(shaped: Int, index: Int): Vector2i {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_range', args);
  }
  public function shapedGetRunText(shaped: Int, index: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_text', args);
  }
  public function shapedGetSpanCount(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_get_span_count', args);
  }
  public function shapedGetSpanEmbeddedObject(shaped: Int, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_embedded_object', args);
  }
  public function shapedGetSpanMeta(shaped: Int, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_meta', args);
  }
  public function shapedGetSpanObject(shaped: Int, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_object', args);
  }
  public function shapedGetSpanText(shaped: Int, index: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_text', args);
  }
  public function shapedGetText(shaped: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_get_text', args);
  }
  public function shapedSetSpanUpdateFont(shaped: Int, index: Int, fonts: Variant, size: Int, ?opentypeFeatures: Dictionary): Void {
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
  public function shapedTextAddObject(shaped: Int, key: Variant, size: Vector2, ?inlineAlign: Int, ?length: Int, ?baseline: Float): Bool {
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
  public function shapedTextAddString(shaped: Int, text: String, fonts: Variant, size: Int, ?opentypeFeatures: Dictionary, ?language: String, ?meta: Variant): Bool {
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
  public function shapedTextClear(rid: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('shaped_text_clear', args);
  }
  public function shapedTextClosestCharacterPos(shaped: Int, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_closest_character_pos', args);
  }
  public function shapedTextDraw(shaped: Int, canvas: Int, pos: Vector2, ?clipL: Float, ?clipR: Float, ?color: Color, ?oversampling: Float): Void {
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
  public function shapedTextDrawOutline(shaped: Int, canvas: Int, pos: Vector2, ?clipL: Float, ?clipR: Float, ?outlineSize: Int, ?color: Color, ?oversampling: Float): Void {
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
  public function shapedTextFitToWidth(shaped: Int, width: Float, ?justificationFlags: Int): Float {
      var args = new ArrayList();
      args.append(shaped);
      args.append(width);
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      return getNative().call('shaped_text_fit_to_width', args);
  }
  public function shapedTextGetAscent(shaped: Int): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_ascent', args);
  }
  public function shapedTextGetCarets(shaped: Int, position: Int): Dictionary {
      var args = new ArrayList();
      args.append(shaped);
      args.append(position);
      return getNative().call('shaped_text_get_carets', args);
  }
  public function shapedTextGetCharacterBreaks(shaped: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_character_breaks', args);
  }
  public function shapedTextGetCustomEllipsis(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_custom_ellipsis', args);
  }
  public function shapedTextGetCustomPunctuation(shaped: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_custom_punctuation', args);
  }
  public function shapedTextGetDescent(shaped: Int): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_descent', args);
  }
  public function shapedTextGetDirection(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_direction', args);
  }
  public function shapedTextGetDominantDirectionInRange(shaped: Int, start: Int, end: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(start);
      args.append(end);
      return getNative().call('shaped_text_get_dominant_direction_in_range', args);
  }
  public function shapedTextGetEllipsisGlyphCount(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_ellipsis_glyph_count', args);
  }
  public function shapedTextGetEllipsisPos(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_ellipsis_pos', args);
  }
  public function shapedTextGetGlyphCount(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_glyph_count', args);
  }
  public function shapedTextGetGraphemeBounds(shaped: Int, pos: Int): Vector2 {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_get_grapheme_bounds', args);
  }
  public function shapedTextGetInferredDirection(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_inferred_direction', args);
  }
  public function shapedTextGetLineBreaks(shaped: Int, width: Float, ?start: Int, ?breakFlags: Int): TypedArray<Int> {
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
  public function shapedTextGetLineBreaksAdv(shaped: Int, width: TypedArray<Float>, ?start: Int, ?once: Bool, ?breakFlags: Int): TypedArray<Int> {
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
  public function shapedTextGetObjectGlyph(shaped: Int, key: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      return getNative().call('shaped_text_get_object_glyph', args);
  }
  public function shapedTextGetObjectRange(shaped: Int, key: Variant): Vector2i {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      return getNative().call('shaped_text_get_object_range', args);
  }
  public function shapedTextGetObjectRect(shaped: Int, key: Variant): Rect2 {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      return getNative().call('shaped_text_get_object_rect', args);
  }
  public function shapedTextGetObjects(shaped: Int): ArrayList {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_objects', args);
  }
  public function shapedTextGetOrientation(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_orientation', args);
  }
  public function shapedTextGetParent(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_parent', args);
  }
  public function shapedTextGetPreserveControl(shaped: Int): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_preserve_control', args);
  }
  public function shapedTextGetPreserveInvalid(shaped: Int): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_preserve_invalid', args);
  }
  public function shapedTextGetRange(shaped: Int): Vector2i {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_range', args);
  }
  public function shapedTextGetSelection(shaped: Int, start: Int, end: Int): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(shaped);
      args.append(start);
      args.append(end);
      return getNative().call('shaped_text_get_selection', args);
  }
  public function shapedTextGetSize(shaped: Int): Vector2 {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_size', args);
  }
  public function shapedTextGetSpacing(shaped: Int, spacing: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(spacing);
      return getNative().call('shaped_text_get_spacing', args);
  }
  public function shapedTextGetTrimPos(shaped: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_trim_pos', args);
  }
  public function shapedTextGetUnderlinePosition(shaped: Int): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_underline_position', args);
  }
  public function shapedTextGetUnderlineThickness(shaped: Int): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_underline_thickness', args);
  }
  public function shapedTextGetWidth(shaped: Int): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_width', args);
  }
  public function shapedTextGetWordBreaks(shaped: Int, ?graphemeFlags: Int, ?skipGraphemeFlags: Int): TypedArray<Int> {
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
  public function shapedTextHasVisibleChars(shaped: Int): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_has_visible_chars', args);
  }
  public function shapedTextHitTestGrapheme(shaped: Int, coords: Float): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(coords);
      return getNative().call('shaped_text_hit_test_grapheme', args);
  }
  public function shapedTextHitTestPosition(shaped: Int, coords: Float): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(coords);
      return getNative().call('shaped_text_hit_test_position', args);
  }
  public function shapedTextIsReady(shaped: Int): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_is_ready', args);
  }
  public function shapedTextNextCharacterPos(shaped: Int, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_next_character_pos', args);
  }
  public function shapedTextNextGraphemePos(shaped: Int, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_next_grapheme_pos', args);
  }
  public function shapedTextOverrunTrimToWidth(shaped: Int, ?width: Float, ?overrunTrimFlags: Int): Void {
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
  public function shapedTextPrevCharacterPos(shaped: Int, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_prev_character_pos', args);
  }
  public function shapedTextPrevGraphemePos(shaped: Int, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_prev_grapheme_pos', args);
  }
  public function shapedTextResizeObject(shaped: Int, key: Variant, size: Vector2, ?inlineAlign: Int, ?baseline: Float): Bool {
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
  public function shapedTextSetBidiOverride(shaped: Int, pOverride: ArrayList): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pOverride);
      getNative().call('shaped_text_set_bidi_override', args);
  }
  public function shapedTextSetCustomEllipsis(shaped: Int, char: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(char);
      getNative().call('shaped_text_set_custom_ellipsis', args);
  }
  public function shapedTextSetCustomPunctuation(shaped: Int, punct: String): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(punct);
      getNative().call('shaped_text_set_custom_punctuation', args);
  }
  public function shapedTextSetDirection(shaped: Int, ?direction: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      if (direction != null) {
          args.append(direction);
      }
      getNative().call('shaped_text_set_direction', args);
  }
  public function shapedTextSetOrientation(shaped: Int, ?orientation: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      if (orientation != null) {
          args.append(orientation);
      }
      getNative().call('shaped_text_set_orientation', args);
  }
  public function shapedTextSetPreserveControl(shaped: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(enabled);
      getNative().call('shaped_text_set_preserve_control', args);
  }
  public function shapedTextSetPreserveInvalid(shaped: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(enabled);
      getNative().call('shaped_text_set_preserve_invalid', args);
  }
  public function shapedTextSetSpacing(shaped: Int, spacing: Int, value: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(spacing);
      args.append(value);
      getNative().call('shaped_text_set_spacing', args);
  }
  public function shapedTextShape(shaped: Int): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_shape', args);
  }
  public function shapedTextSubstr(shaped: Int, start: Int, length: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(start);
      args.append(length);
      return getNative().call('shaped_text_substr', args);
  }
  public function shapedTextTabAlign(shaped: Int, tabStops: TypedArray<Float>): Float {
      var args = new ArrayList();
      args.append(shaped);
      args.append(tabStops);
      return getNative().call('shaped_text_tab_align', args);
  }
  public function spoofCheck(string: String): Bool {
      var args = new ArrayList();
      args.append(string);
      return getNative().call('spoof_check', args);
  }
  public function stringGetCharacterBreaks(string: String, ?language: String): TypedArray<Int> {
      var args = new ArrayList();
      args.append(string);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('string_get_character_breaks', args);
  }
  public function stringGetWordBreaks(string: String, ?language: String, ?charsPerLine: Int): TypedArray<Int> {
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
  public function stringToLower(string: String, ?language: String): String {
      var args = new ArrayList();
      args.append(string);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('string_to_lower', args);
  }
  public function stringToTitle(string: String, ?language: String): String {
      var args = new ArrayList();
      args.append(string);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('string_to_title', args);
  }
  public function stringToUpper(string: String, ?language: String): String {
      var args = new ArrayList();
      args.append(string);
      if (language != null) {
          args.append(language);
      }
      return getNative().call('string_to_upper', args);
  }
  public function stripDiacritics(string: String): String {
      var args = new ArrayList();
      args.append(string);
      return getNative().call('strip_diacritics', args);
  }
  public function tagToName(tag: Int): String {
      var args = new ArrayList();
      args.append(tag);
      return getNative().call('tag_to_name', args);
  }
}
