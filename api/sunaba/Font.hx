package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.Vector2;
import sunaba.core.Color;
import sunaba.core.Dictionary;

class Font extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('Font');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Font', native];
        scriptLoader.call('loadScript', args);
    }

    public var fallbacks(get, set): ArrayList;
    function get_fallbacks(): ArrayList {
        return native.get('fallbacks');
    }
    function set_fallbacks(value: ArrayList): ArrayList {
      native.set('fallbacks', value);
        return value;
    }


  public function drawChar(canvasItem: Int, pos: Vector2, char: Int, fontSize: Int, ?modulate: Color, ?oversampling: Float): Float {
      var args = new ArrayList();
      args.append(canvasItem);
      args.append(pos);
      args.append(char);
      args.append(fontSize);
      if (modulate != null) {
          args.append(modulate);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      return native.call('draw_char', args);
  }
  public function drawCharOutline(canvasItem: Int, pos: Vector2, char: Int, fontSize: Int, ?size: Int, ?modulate: Color, ?oversampling: Float): Float {
      var args = new ArrayList();
      args.append(canvasItem);
      args.append(pos);
      args.append(char);
      args.append(fontSize);
      if (size != null) {
          args.append(size);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      return native.call('draw_char_outline', args);
  }
  public function drawMultilineString(canvasItem: Int, pos: Vector2, text: String, ?alignment: Int, ?width: Float, ?fontSize: Int, ?maxLines: Int, ?modulate: Color, ?brkFlags: Int, ?justificationFlags: Int, ?direction: Int, ?orientation: Int, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(canvasItem);
      args.append(pos);
      args.append(text);
      if (alignment != null) {
          args.append(alignment);
      }
      if (width != null) {
          args.append(width);
      }
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (maxLines != null) {
          args.append(maxLines);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (brkFlags != null) {
          args.append(brkFlags);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      native.call('draw_multiline_string', args);
  }
  public function drawMultilineStringOutline(canvasItem: Int, pos: Vector2, text: String, ?alignment: Int, ?width: Float, ?fontSize: Int, ?maxLines: Int, ?size: Int, ?modulate: Color, ?brkFlags: Int, ?justificationFlags: Int, ?direction: Int, ?orientation: Int, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(canvasItem);
      args.append(pos);
      args.append(text);
      if (alignment != null) {
          args.append(alignment);
      }
      if (width != null) {
          args.append(width);
      }
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (maxLines != null) {
          args.append(maxLines);
      }
      if (size != null) {
          args.append(size);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (brkFlags != null) {
          args.append(brkFlags);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      native.call('draw_multiline_string_outline', args);
  }
  public function drawString(canvasItem: Int, pos: Vector2, text: String, ?alignment: Int, ?width: Float, ?fontSize: Int, ?modulate: Color, ?justificationFlags: Int, ?direction: Int, ?orientation: Int, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(canvasItem);
      args.append(pos);
      args.append(text);
      if (alignment != null) {
          args.append(alignment);
      }
      if (width != null) {
          args.append(width);
      }
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      native.call('draw_string', args);
  }
  public function drawStringOutline(canvasItem: Int, pos: Vector2, text: String, ?alignment: Int, ?width: Float, ?fontSize: Int, ?size: Int, ?modulate: Color, ?justificationFlags: Int, ?direction: Int, ?orientation: Int, ?oversampling: Float): Void {
      var args = new ArrayList();
      args.append(canvasItem);
      args.append(pos);
      args.append(text);
      if (alignment != null) {
          args.append(alignment);
      }
      if (width != null) {
          args.append(width);
      }
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (size != null) {
          args.append(size);
      }
      if (modulate != null) {
          args.append(modulate);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      if (oversampling != null) {
          args.append(oversampling);
      }
      native.call('draw_string_outline', args);
  }
  public function findVariation(variationCoordinates: Dictionary, ?faceIndex: Int, ?strength: Float, ?transform: Variant, ?spacingTop: Int, ?spacingBottom: Int, ?spacingSpace: Int, ?spacingGlyph: Int, ?baselineOffset: Float): Int {
      var args = new ArrayList();
      args.append(variationCoordinates);
      if (faceIndex != null) {
          args.append(faceIndex);
      }
      if (strength != null) {
          args.append(strength);
      }
      if (transform != null) {
          args.append(transform);
      }
      if (spacingTop != null) {
          args.append(spacingTop);
      }
      if (spacingBottom != null) {
          args.append(spacingBottom);
      }
      if (spacingSpace != null) {
          args.append(spacingSpace);
      }
      if (spacingGlyph != null) {
          args.append(spacingGlyph);
      }
      if (baselineOffset != null) {
          args.append(baselineOffset);
      }
      return native.call('find_variation', args);
  }
  public function getAscent(?fontSize: Int): Float {
      var args = new ArrayList();
      if (fontSize != null) {
          args.append(fontSize);
      }
      return native.call('get_ascent', args);
  }
  public function getCharSize(char: Int, fontSize: Int): Vector2 {
      var args = new ArrayList();
      args.append(char);
      args.append(fontSize);
      return native.call('get_char_size', args);
  }
  public function getDescent(?fontSize: Int): Float {
      var args = new ArrayList();
      if (fontSize != null) {
          args.append(fontSize);
      }
      return native.call('get_descent', args);
  }
  public function getFaceCount(): Int {
      var args = new ArrayList();
      return native.call('get_face_count', args);
  }
  public function getFontName(): String {
      var args = new ArrayList();
      return native.call('get_font_name', args);
  }
  public function getFontStretch(): Int {
      var args = new ArrayList();
      return native.call('get_font_stretch', args);
  }
  public function getFontStyle(): Int {
      var args = new ArrayList();
      return native.call('get_font_style', args);
  }
  public function getFontStyleName(): String {
      var args = new ArrayList();
      return native.call('get_font_style_name', args);
  }
  public function getFontWeight(): Int {
      var args = new ArrayList();
      return native.call('get_font_weight', args);
  }
  public function getHeight(?fontSize: Int): Float {
      var args = new ArrayList();
      if (fontSize != null) {
          args.append(fontSize);
      }
      return native.call('get_height', args);
  }
  public function getMultilineStringSize(text: String, ?alignment: Int, ?width: Float, ?fontSize: Int, ?maxLines: Int, ?brkFlags: Int, ?justificationFlags: Int, ?direction: Int, ?orientation: Int): Vector2 {
      var args = new ArrayList();
      args.append(text);
      if (alignment != null) {
          args.append(alignment);
      }
      if (width != null) {
          args.append(width);
      }
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (maxLines != null) {
          args.append(maxLines);
      }
      if (brkFlags != null) {
          args.append(brkFlags);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      return native.call('get_multiline_string_size', args);
  }
  public function getOpentypeFeatures(): Dictionary {
      var args = new ArrayList();
      return native.call('get_opentype_features', args);
  }
  public function getOtNameStrings(): Dictionary {
      var args = new ArrayList();
      return native.call('get_ot_name_strings', args);
  }
  public function getRids(): ArrayList {
      var args = new ArrayList();
      return native.call('get_rids', args);
  }
  public function getSpacing(spacing: Int): Int {
      var args = new ArrayList();
      args.append(spacing);
      return native.call('get_spacing', args);
  }
  public function getStringSize(text: String, ?alignment: Int, ?width: Float, ?fontSize: Int, ?justificationFlags: Int, ?direction: Int, ?orientation: Int): Vector2 {
      var args = new ArrayList();
      args.append(text);
      if (alignment != null) {
          args.append(alignment);
      }
      if (width != null) {
          args.append(width);
      }
      if (fontSize != null) {
          args.append(fontSize);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (direction != null) {
          args.append(direction);
      }
      if (orientation != null) {
          args.append(orientation);
      }
      return native.call('get_string_size', args);
  }
  public function getSupportedChars(): String {
      var args = new ArrayList();
      return native.call('get_supported_chars', args);
  }
  public function getSupportedFeatureList(): Dictionary {
      var args = new ArrayList();
      return native.call('get_supported_feature_list', args);
  }
  public function getSupportedVariationList(): Dictionary {
      var args = new ArrayList();
      return native.call('get_supported_variation_list', args);
  }
  public function getUnderlinePosition(?fontSize: Int): Float {
      var args = new ArrayList();
      if (fontSize != null) {
          args.append(fontSize);
      }
      return native.call('get_underline_position', args);
  }
  public function getUnderlineThickness(?fontSize: Int): Float {
      var args = new ArrayList();
      if (fontSize != null) {
          args.append(fontSize);
      }
      return native.call('get_underline_thickness', args);
  }
  public function hasChar(char: Int): Bool {
      var args = new ArrayList();
      args.append(char);
      return native.call('has_char', args);
  }
  public function isLanguageSupported(language: String): Bool {
      var args = new ArrayList();
      args.append(language);
      return native.call('is_language_supported', args);
  }
  public function isScriptSupported(script: String): Bool {
      var args = new ArrayList();
      args.append(script);
      return native.call('is_script_supported', args);
  }
  public function setCacheCapacity(singleLine: Int, multiLine: Int): Void {
      var args = new ArrayList();
      args.append(singleLine);
      args.append(multiLine);
      native.call('set_cache_capacity', args);
  }
}
