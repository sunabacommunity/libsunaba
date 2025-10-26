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



  public function createFont(): Variant {
      var args = new ArrayList();
      return getNative().call('create_font', args);
  }
  public function createFontLinkedVariation(fontRid: Variant): Variant {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('create_font_linked_variation', args);
  }
  public function createShapedText(?direction: Int, ?orientation: Int): Variant {
      var args = new ArrayList();
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      return getNative().call('create_shaped_text', args);
  }
  public function drawHexCodeBox(canvas: Variant, size: Int, pos: Vector2, index: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(canvas);
      args.append(size);
      args.append(pos);
      args.append(index);
      args.append(color);
      getNative().call('draw_hex_code_box', args);
  }
  public function fontClearGlyphs(fontRid: Variant, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_clear_glyphs', args);
  }
  public function fontClearKerningMap(fontRid: Variant, size: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_clear_kerning_map', args);
  }
  public function fontClearSizeCache(fontRid: Variant): Void {
      var args = new ArrayList();
      args.append(fontRid);
      getNative().call('font_clear_size_cache', args);
  }
  public function fontClearSystemFallbackCache(): Void {
      var args = new ArrayList();
      getNative().call('font_clear_system_fallback_cache', args);
  }
  public function fontClearTextures(fontRid: Variant, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_clear_textures', args);
  }
  public function fontDrawGlyph(fontRid: Variant, canvas: Variant, size: Int, pos: Vector2, index: Int, ?color: Color, ?oversampling: Float): Void {
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
  public function fontDrawGlyphOutline(fontRid: Variant, canvas: Variant, size: Int, outlineSize: Int, pos: Vector2, index: Int, ?color: Color, ?oversampling: Float): Void {
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
  public function fontGetAntialiasing(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_antialiasing', args);
  }
  public function fontGetAscent(fontRid: Variant, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_ascent', args);
  }
  public function fontGetBaselineOffset(fontRid: Variant): Float {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_baseline_offset', args);
  }
  public function fontGetCharFromGlyphIndex(fontRid: Variant, size: Int, glyphIndex: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphIndex);
      return getNative().call('font_get_char_from_glyph_index', args);
  }
  public function fontGetDescent(fontRid: Variant, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_descent', args);
  }
  public function fontGetDisableEmbeddedBitmaps(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_disable_embedded_bitmaps', args);
  }
  public function fontGetEmbolden(fontRid: Variant): Float {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_embolden', args);
  }
  public function fontGetFaceCount(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_face_count', args);
  }
  public function fontGetFaceIndex(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_face_index', args);
  }
  public function fontGetFixedSize(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_fixed_size', args);
  }
  public function fontGetFixedSizeScaleMode(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_fixed_size_scale_mode', args);
  }
  public function fontGetGenerateMipmaps(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_generate_mipmaps', args);
  }
  public function fontGetGlobalOversampling(): Float {
      var args = new ArrayList();
      return getNative().call('font_get_global_oversampling', args);
  }
  public function fontGetGlyphAdvance(fontRid: Variant, size: Int, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_advance', args);
  }
  public function fontGetGlyphContours(font: Variant, size: Int, index: Int): Dictionary {
      var args = new ArrayList();
      args.append(font);
      args.append(size);
      args.append(index);
      return getNative().call('font_get_glyph_contours', args);
  }
  public function fontGetGlyphIndex(fontRid: Variant, size: Int, char: Int, variationSelector: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(char);
      args.append(variationSelector);
      return getNative().call('font_get_glyph_index', args);
  }
  public function fontGetGlyphList(fontRid: Variant, size: Vector2i): TypedArray<Int> {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_glyph_list', args);
  }
  public function fontGetGlyphOffset(fontRid: Variant, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_offset', args);
  }
  public function fontGetGlyphSize(fontRid: Variant, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_size', args);
  }
  public function fontGetGlyphTextureIdx(fontRid: Variant, size: Vector2i, glyph: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_texture_idx', args);
  }
  public function fontGetGlyphTextureRid(fontRid: Variant, size: Vector2i, glyph: Int): Variant {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_texture_rid', args);
  }
  public function fontGetGlyphTextureSize(fontRid: Variant, size: Vector2i, glyph: Int): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_texture_size', args);
  }
  public function fontGetGlyphUvRect(fontRid: Variant, size: Vector2i, glyph: Int): Rect2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      return getNative().call('font_get_glyph_uv_rect', args);
  }
  public function fontGetHinting(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_hinting', args);
  }
  public function fontGetKeepRoundingRemainders(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_keep_rounding_remainders', args);
  }
  public function fontGetKerning(fontRid: Variant, size: Int, glyphPair: Vector2i): Vector2 {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphPair);
      return getNative().call('font_get_kerning', args);
  }
  public function fontGetLanguageSupportOverride(fontRid: Variant, language: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      return getNative().call('font_get_language_support_override', args);
  }
  public function fontGetLanguageSupportOverrides(fontRid: Variant): TypedArray<String> {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_language_support_overrides', args);
  }
  public function fontGetMsdfPixelRange(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_msdf_pixel_range', args);
  }
  public function fontGetMsdfSize(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_msdf_size', args);
  }
  public function fontGetName(fontRid: Variant): String {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_name', args);
  }
  public function fontGetOpentypeFeatureOverrides(fontRid: Variant): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_opentype_feature_overrides', args);
  }
  public function fontGetOtNameStrings(fontRid: Variant): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_ot_name_strings', args);
  }
  public function fontGetOversampling(fontRid: Variant): Float {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_oversampling', args);
  }
  public function fontGetScale(fontRid: Variant, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_scale', args);
  }
  public function fontGetScriptSupportOverride(fontRid: Variant, script: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      return getNative().call('font_get_script_support_override', args);
  }
  public function fontGetScriptSupportOverrides(fontRid: Variant): TypedArray<String> {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_script_support_overrides', args);
  }
  public function fontGetSpacing(fontRid: Variant, spacing: Int): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(spacing);
      return getNative().call('font_get_spacing', args);
  }
  public function fontGetStretch(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_stretch', args);
  }
  public function fontGetStyle(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_style', args);
  }
  public function fontGetStyleName(fontRid: Variant): String {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_style_name', args);
  }
  public function fontGetSubpixelPositioning(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_subpixel_positioning', args);
  }
  public function fontGetSupportedChars(fontRid: Variant): String {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_supported_chars', args);
  }
  public function fontGetSupportedGlyphs(fontRid: Variant): TypedArray<Int> {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_supported_glyphs', args);
  }
  public function fontGetTextureCount(fontRid: Variant, size: Vector2i): Int {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_texture_count', args);
  }
  public function fontGetTextureImage(fontRid: Variant, size: Vector2i, textureIndex: Int): Image {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      var ref: NativeReference = getNative().call('font_get_texture_image', args);
      return new Image(ref);
  }
  public function fontGetTextureOffsets(fontRid: Variant, size: Vector2i, textureIndex: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      return getNative().call('font_get_texture_offsets', args);
  }
  public function fontGetUnderlinePosition(fontRid: Variant, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_underline_position', args);
  }
  public function fontGetUnderlineThickness(fontRid: Variant, size: Int): Float {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      return getNative().call('font_get_underline_thickness', args);
  }
  public function fontGetVariationCoordinates(fontRid: Variant): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_variation_coordinates', args);
  }
  public function fontGetWeight(fontRid: Variant): Int {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_get_weight', args);
  }
  public function fontHasChar(fontRid: Variant, char: Int): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(char);
      return getNative().call('font_has_char', args);
  }
  public function fontIsAllowSystemFallback(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_allow_system_fallback', args);
  }
  public function fontIsForceAutohinter(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_force_autohinter', args);
  }
  public function fontIsLanguageSupported(fontRid: Variant, language: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      return getNative().call('font_is_language_supported', args);
  }
  public function fontIsModulateColorGlyphs(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_modulate_color_glyphs', args);
  }
  public function fontIsMultichannelSignedDistanceField(fontRid: Variant): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_is_multichannel_signed_distance_field', args);
  }
  public function fontIsScriptSupported(fontRid: Variant, script: String): Bool {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      return getNative().call('font_is_script_supported', args);
  }
  public function fontRemoveGlyph(fontRid: Variant, size: Vector2i, glyph: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      getNative().call('font_remove_glyph', args);
  }
  public function fontRemoveKerning(fontRid: Variant, size: Int, glyphPair: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphPair);
      getNative().call('font_remove_kerning', args);
  }
  public function fontRemoveLanguageSupportOverride(fontRid: Variant, language: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      getNative().call('font_remove_language_support_override', args);
  }
  public function fontRemoveScriptSupportOverride(fontRid: Variant, script: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      getNative().call('font_remove_script_support_override', args);
  }
  public function fontRemoveSizeCache(fontRid: Variant, size: Vector2i): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      getNative().call('font_remove_size_cache', args);
  }
  public function fontRemoveTexture(fontRid: Variant, size: Vector2i, textureIndex: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      getNative().call('font_remove_texture', args);
  }
  public function fontRenderGlyph(fontRid: Variant, size: Vector2i, index: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(index);
      getNative().call('font_render_glyph', args);
  }
  public function fontRenderRange(fontRid: Variant, size: Vector2i, start: Int, end: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(start);
      args.append(end);
      getNative().call('font_render_range', args);
  }
  public function fontSetAllowSystemFallback(fontRid: Variant, allowSystemFallback: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(allowSystemFallback);
      getNative().call('font_set_allow_system_fallback', args);
  }
  public function fontSetAntialiasing(fontRid: Variant, antialiasing: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(antialiasing);
      getNative().call('font_set_antialiasing', args);
  }
  public function fontSetAscent(fontRid: Variant, size: Int, ascent: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(ascent);
      getNative().call('font_set_ascent', args);
  }
  public function fontSetBaselineOffset(fontRid: Variant, baselineOffset: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(baselineOffset);
      getNative().call('font_set_baseline_offset', args);
  }
  public function fontSetData(fontRid: Variant, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(data);
      getNative().call('font_set_data', args);
  }
  public function fontSetDescent(fontRid: Variant, size: Int, descent: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(descent);
      getNative().call('font_set_descent', args);
  }
  public function fontSetDisableEmbeddedBitmaps(fontRid: Variant, disableEmbeddedBitmaps: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(disableEmbeddedBitmaps);
      getNative().call('font_set_disable_embedded_bitmaps', args);
  }
  public function fontSetEmbolden(fontRid: Variant, strength: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(strength);
      getNative().call('font_set_embolden', args);
  }
  public function fontSetFaceIndex(fontRid: Variant, faceIndex: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(faceIndex);
      getNative().call('font_set_face_index', args);
  }
  public function fontSetFixedSize(fontRid: Variant, fixedSize: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(fixedSize);
      getNative().call('font_set_fixed_size', args);
  }
  public function fontSetFixedSizeScaleMode(fontRid: Variant, fixedSizeScaleMode: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(fixedSizeScaleMode);
      getNative().call('font_set_fixed_size_scale_mode', args);
  }
  public function fontSetForceAutohinter(fontRid: Variant, forceAutohinter: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(forceAutohinter);
      getNative().call('font_set_force_autohinter', args);
  }
  public function fontSetGenerateMipmaps(fontRid: Variant, generateMipmaps: Bool): Void {
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
  public function fontSetGlyphAdvance(fontRid: Variant, size: Int, glyph: Int, advance: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(advance);
      getNative().call('font_set_glyph_advance', args);
  }
  public function fontSetGlyphOffset(fontRid: Variant, size: Vector2i, glyph: Int, offset: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(offset);
      getNative().call('font_set_glyph_offset', args);
  }
  public function fontSetGlyphSize(fontRid: Variant, size: Vector2i, glyph: Int, glSize: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(glSize);
      getNative().call('font_set_glyph_size', args);
  }
  public function fontSetGlyphTextureIdx(fontRid: Variant, size: Vector2i, glyph: Int, textureIdx: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(textureIdx);
      getNative().call('font_set_glyph_texture_idx', args);
  }
  public function fontSetGlyphUvRect(fontRid: Variant, size: Vector2i, glyph: Int, uvRect: Rect2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyph);
      args.append(uvRect);
      getNative().call('font_set_glyph_uv_rect', args);
  }
  public function fontSetHinting(fontRid: Variant, hinting: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(hinting);
      getNative().call('font_set_hinting', args);
  }
  public function fontSetKeepRoundingRemainders(fontRid: Variant, keepRoundingRemainders: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(keepRoundingRemainders);
      getNative().call('font_set_keep_rounding_remainders', args);
  }
  public function fontSetKerning(fontRid: Variant, size: Int, glyphPair: Vector2i, kerning: Vector2): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(glyphPair);
      args.append(kerning);
      getNative().call('font_set_kerning', args);
  }
  public function fontSetLanguageSupportOverride(fontRid: Variant, language: String, supported: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(language);
      args.append(supported);
      getNative().call('font_set_language_support_override', args);
  }
  public function fontSetModulateColorGlyphs(fontRid: Variant, forceAutohinter: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(forceAutohinter);
      getNative().call('font_set_modulate_color_glyphs', args);
  }
  public function fontSetMsdfPixelRange(fontRid: Variant, msdfPixelRange: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(msdfPixelRange);
      getNative().call('font_set_msdf_pixel_range', args);
  }
  public function fontSetMsdfSize(fontRid: Variant, msdfSize: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(msdfSize);
      getNative().call('font_set_msdf_size', args);
  }
  public function fontSetMultichannelSignedDistanceField(fontRid: Variant, msdf: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(msdf);
      getNative().call('font_set_multichannel_signed_distance_field', args);
  }
  public function fontSetName(fontRid: Variant, name: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(name);
      getNative().call('font_set_name', args);
  }
  public function fontSetOpentypeFeatureOverrides(fontRid: Variant, overrides: Dictionary): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(overrides);
      getNative().call('font_set_opentype_feature_overrides', args);
  }
  public function fontSetOversampling(fontRid: Variant, oversampling: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(oversampling);
      getNative().call('font_set_oversampling', args);
  }
  public function fontSetScale(fontRid: Variant, size: Int, scale: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(scale);
      getNative().call('font_set_scale', args);
  }
  public function fontSetScriptSupportOverride(fontRid: Variant, script: String, supported: Bool): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(script);
      args.append(supported);
      getNative().call('font_set_script_support_override', args);
  }
  public function fontSetSpacing(fontRid: Variant, spacing: Int, value: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(spacing);
      args.append(value);
      getNative().call('font_set_spacing', args);
  }
  public function fontSetStretch(fontRid: Variant, weight: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(weight);
      getNative().call('font_set_stretch', args);
  }
  public function fontSetStyle(fontRid: Variant, style: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(style);
      getNative().call('font_set_style', args);
  }
  public function fontSetStyleName(fontRid: Variant, name: String): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(name);
      getNative().call('font_set_style_name', args);
  }
  public function fontSetSubpixelPositioning(fontRid: Variant, subpixelPositioning: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(subpixelPositioning);
      getNative().call('font_set_subpixel_positioning', args);
  }
  public function fontSetTextureImage(fontRid: Variant, size: Vector2i, textureIndex: Int, image: Image): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      args.append(image.native);
      getNative().call('font_set_texture_image', args);
  }
  public function fontSetTextureOffsets(fontRid: Variant, size: Vector2i, textureIndex: Int, offset: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(textureIndex);
      args.append(offset);
      getNative().call('font_set_texture_offsets', args);
  }
  public function fontSetTransform(fontRid: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(transform);
      getNative().call('font_set_transform', args);
  }
  public function fontSetUnderlinePosition(fontRid: Variant, size: Int, underlinePosition: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(underlinePosition);
      getNative().call('font_set_underline_position', args);
  }
  public function fontSetUnderlineThickness(fontRid: Variant, size: Int, underlineThickness: Float): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(size);
      args.append(underlineThickness);
      getNative().call('font_set_underline_thickness', args);
  }
  public function fontSetVariationCoordinates(fontRid: Variant, variationCoordinates: Dictionary): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(variationCoordinates);
      getNative().call('font_set_variation_coordinates', args);
  }
  public function fontSetWeight(fontRid: Variant, weight: Int): Void {
      var args = new ArrayList();
      args.append(fontRid);
      args.append(weight);
      getNative().call('font_set_weight', args);
  }
  public function fontSupportedFeatureList(fontRid: Variant): Dictionary {
      var args = new ArrayList();
      args.append(fontRid);
      return getNative().call('font_supported_feature_list', args);
  }
  public function fontSupportedVariationList(fontRid: Variant): Dictionary {
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
  public function freeRid(rid: Variant): Void {
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
  public function has(rid: Variant): Bool {
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
  public function shapedGetRunCount(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_get_run_count', args);
  }
  public function shapedGetRunDirection(shaped: Variant, index: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_direction', args);
  }
  public function shapedGetRunFontRid(shaped: Variant, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_font_rid', args);
  }
  public function shapedGetRunFontSize(shaped: Variant, index: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_font_size', args);
  }
  public function shapedGetRunLanguage(shaped: Variant, index: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_language', args);
  }
  public function shapedGetRunObject(shaped: Variant, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_object', args);
  }
  public function shapedGetRunRange(shaped: Variant, index: Int): Vector2i {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_range', args);
  }
  public function shapedGetRunText(shaped: Variant, index: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_run_text', args);
  }
  public function shapedGetSpanCount(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_get_span_count', args);
  }
  public function shapedGetSpanEmbeddedObject(shaped: Variant, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_embedded_object', args);
  }
  public function shapedGetSpanMeta(shaped: Variant, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_meta', args);
  }
  public function shapedGetSpanObject(shaped: Variant, index: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_object', args);
  }
  public function shapedGetSpanText(shaped: Variant, index: Int): String {
      var args = new ArrayList();
      args.append(shaped);
      args.append(index);
      return getNative().call('shaped_get_span_text', args);
  }
  public function shapedGetText(shaped: Variant): String {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_get_text', args);
  }
  public function shapedSetSpanUpdateFont(shaped: Variant, index: Int, fonts: Variant, size: Int, ?opentypeFeatures: Dictionary): Void {
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
  public function shapedTextAddObject(shaped: Variant, key: Variant, size: Vector2, ?inlineAlign: Int, ?length: Int, ?baseline: Float): Bool {
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
  public function shapedTextAddString(shaped: Variant, text: String, fonts: Variant, size: Int, ?opentypeFeatures: Dictionary, ?language: String, ?meta: Variant): Bool {
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
  public function shapedTextClear(rid: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('shaped_text_clear', args);
  }
  public function shapedTextClosestCharacterPos(shaped: Variant, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_closest_character_pos', args);
  }
  public function shapedTextDraw(shaped: Variant, canvas: Variant, pos: Vector2, ?clipL: Float, ?clipR: Float, ?color: Color, ?oversampling: Float): Void {
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
  public function shapedTextDrawOutline(shaped: Variant, canvas: Variant, pos: Vector2, ?clipL: Float, ?clipR: Float, ?outlineSize: Int, ?color: Color, ?oversampling: Float): Void {
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
  public function shapedTextFitToWidth(shaped: Variant, width: Float, ?justificationFlags: Int): Float {
      var args = new ArrayList();
      args.append(shaped);
      args.append(width);
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      return getNative().call('shaped_text_fit_to_width', args);
  }
  public function shapedTextGetAscent(shaped: Variant): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_ascent', args);
  }
  public function shapedTextGetCarets(shaped: Variant, position: Int): Dictionary {
      var args = new ArrayList();
      args.append(shaped);
      args.append(position);
      return getNative().call('shaped_text_get_carets', args);
  }
  public function shapedTextGetCharacterBreaks(shaped: Variant): TypedArray<Int> {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_character_breaks', args);
  }
  public function shapedTextGetCustomEllipsis(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_custom_ellipsis', args);
  }
  public function shapedTextGetCustomPunctuation(shaped: Variant): String {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_custom_punctuation', args);
  }
  public function shapedTextGetDescent(shaped: Variant): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_descent', args);
  }
  public function shapedTextGetDirection(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_direction', args);
  }
  public function shapedTextGetDominantDirectionInRange(shaped: Variant, start: Int, end: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(start);
      args.append(end);
      return getNative().call('shaped_text_get_dominant_direction_in_range', args);
  }
  public function shapedTextGetEllipsisGlyphCount(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_ellipsis_glyph_count', args);
  }
  public function shapedTextGetEllipsisPos(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_ellipsis_pos', args);
  }
  public function shapedTextGetGlyphCount(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_glyph_count', args);
  }
  public function shapedTextGetGraphemeBounds(shaped: Variant, pos: Int): Vector2 {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_get_grapheme_bounds', args);
  }
  public function shapedTextGetInferredDirection(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_inferred_direction', args);
  }
  public function shapedTextGetLineBreaks(shaped: Variant, width: Float, ?start: Int, ?breakFlags: Int): TypedArray<Int> {
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
  public function shapedTextGetLineBreaksAdv(shaped: Variant, width: TypedArray<Float>, ?start: Int, ?once: Bool, ?breakFlags: Int): TypedArray<Int> {
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
  public function shapedTextGetObjectGlyph(shaped: Variant, key: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      return getNative().call('shaped_text_get_object_glyph', args);
  }
  public function shapedTextGetObjectRange(shaped: Variant, key: Variant): Vector2i {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      return getNative().call('shaped_text_get_object_range', args);
  }
  public function shapedTextGetObjectRect(shaped: Variant, key: Variant): Rect2 {
      var args = new ArrayList();
      args.append(shaped);
      args.append(key);
      return getNative().call('shaped_text_get_object_rect', args);
  }
  public function shapedTextGetObjects(shaped: Variant): ArrayList {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_objects', args);
  }
  public function shapedTextGetOrientation(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_orientation', args);
  }
  public function shapedTextGetParent(shaped: Variant): Variant {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_parent', args);
  }
  public function shapedTextGetPreserveControl(shaped: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_preserve_control', args);
  }
  public function shapedTextGetPreserveInvalid(shaped: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_preserve_invalid', args);
  }
  public function shapedTextGetRange(shaped: Variant): Vector2i {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_range', args);
  }
  public function shapedTextGetSelection(shaped: Variant, start: Int, end: Int): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(shaped);
      args.append(start);
      args.append(end);
      return getNative().call('shaped_text_get_selection', args);
  }
  public function shapedTextGetSize(shaped: Variant): Vector2 {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_size', args);
  }
  public function shapedTextGetSpacing(shaped: Variant, spacing: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(spacing);
      return getNative().call('shaped_text_get_spacing', args);
  }
  public function shapedTextGetTrimPos(shaped: Variant): Int {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_trim_pos', args);
  }
  public function shapedTextGetUnderlinePosition(shaped: Variant): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_underline_position', args);
  }
  public function shapedTextGetUnderlineThickness(shaped: Variant): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_underline_thickness', args);
  }
  public function shapedTextGetWidth(shaped: Variant): Float {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_get_width', args);
  }
  public function shapedTextGetWordBreaks(shaped: Variant, ?graphemeFlags: Int, ?skipGraphemeFlags: Int): TypedArray<Int> {
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
  public function shapedTextHasVisibleChars(shaped: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_has_visible_chars', args);
  }
  public function shapedTextHitTestGrapheme(shaped: Variant, coords: Float): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(coords);
      return getNative().call('shaped_text_hit_test_grapheme', args);
  }
  public function shapedTextHitTestPosition(shaped: Variant, coords: Float): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(coords);
      return getNative().call('shaped_text_hit_test_position', args);
  }
  public function shapedTextIsReady(shaped: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_is_ready', args);
  }
  public function shapedTextNextCharacterPos(shaped: Variant, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_next_character_pos', args);
  }
  public function shapedTextNextGraphemePos(shaped: Variant, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_next_grapheme_pos', args);
  }
  public function shapedTextOverrunTrimToWidth(shaped: Variant, ?width: Float, ?overrunTrimFlags: Int): Void {
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
  public function shapedTextPrevCharacterPos(shaped: Variant, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_prev_character_pos', args);
  }
  public function shapedTextPrevGraphemePos(shaped: Variant, pos: Int): Int {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pos);
      return getNative().call('shaped_text_prev_grapheme_pos', args);
  }
  public function shapedTextResizeObject(shaped: Variant, key: Variant, size: Vector2, ?inlineAlign: Int, ?baseline: Float): Bool {
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
  public function shapedTextSetBidiOverride(shaped: Variant, pOverride: ArrayList): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(pOverride);
      getNative().call('shaped_text_set_bidi_override', args);
  }
  public function shapedTextSetCustomEllipsis(shaped: Variant, char: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(char);
      getNative().call('shaped_text_set_custom_ellipsis', args);
  }
  public function shapedTextSetCustomPunctuation(shaped: Variant, punct: String): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(punct);
      getNative().call('shaped_text_set_custom_punctuation', args);
  }
  public function shapedTextSetDirection(shaped: Variant, ?direction: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      if (direction != null) {
          args.append(direction);
      }
      getNative().call('shaped_text_set_direction', args);
  }
  public function shapedTextSetOrientation(shaped: Variant, ?orientation: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      if (orientation != null) {
          args.append(orientation);
      }
      getNative().call('shaped_text_set_orientation', args);
  }
  public function shapedTextSetPreserveControl(shaped: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(enabled);
      getNative().call('shaped_text_set_preserve_control', args);
  }
  public function shapedTextSetPreserveInvalid(shaped: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(enabled);
      getNative().call('shaped_text_set_preserve_invalid', args);
  }
  public function shapedTextSetSpacing(shaped: Variant, spacing: Int, value: Int): Void {
      var args = new ArrayList();
      args.append(shaped);
      args.append(spacing);
      args.append(value);
      getNative().call('shaped_text_set_spacing', args);
  }
  public function shapedTextShape(shaped: Variant): Bool {
      var args = new ArrayList();
      args.append(shaped);
      return getNative().call('shaped_text_shape', args);
  }
  public function shapedTextSubstr(shaped: Variant, start: Int, length: Int): Variant {
      var args = new ArrayList();
      args.append(shaped);
      args.append(start);
      args.append(length);
      return getNative().call('shaped_text_substr', args);
  }
  public function shapedTextTabAlign(shaped: Variant, tabStops: TypedArray<Float>): Float {
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
