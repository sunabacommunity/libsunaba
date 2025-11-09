package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.LabelSettings;
import sunaba.core.TypedArray;
import sunaba.core.Signal;
import sunaba.core.Rect2;

class Label extends Control {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('Label');
        }
        this.native = _native;
    }

    public var autowrapMode(get, set): Int;
    function get_autowrapMode(): Int {
        return native.get('autowrap_mode');
    }
    function set_autowrapMode(value: Int): Int {
      native.set('autowrap_mode', value);
        return value;
    }
    public var clipText(get, set): Bool;
    function get_clipText(): Bool {
        return native.get('clip_text');
    }
    function set_clipText(value: Bool): Bool {
      native.set('clip_text', value);
        return value;
    }
    public var ellipsisChar(get, set): String;
    function get_ellipsisChar(): String {
        return native.get('ellipsis_char');
    }
    function set_ellipsisChar(value: String): String {
      native.set('ellipsis_char', value);
        return value;
    }
    public var horizontalAlignment(get, set): Int;
    function get_horizontalAlignment(): Int {
        return native.get('horizontal_alignment');
    }
    function set_horizontalAlignment(value: Int): Int {
      native.set('horizontal_alignment', value);
        return value;
    }
    public var justificationFlags(get, set): Int;
    function get_justificationFlags(): Int {
        return native.get('justification_flags');
    }
    function set_justificationFlags(value: Int): Int {
      native.set('justification_flags', value);
        return value;
    }
    public var labelSettings(get, set): LabelSettings;
    function get_labelSettings(): LabelSettings {
        var ref: NativeReference = native.get('label_settings');
        return new LabelSettings(ref);
    }
    function set_labelSettings(value: LabelSettings): LabelSettings {
      native.set('label_settings', value.native);
        return value;
    }
    public var language(get, set): String;
    function get_language(): String {
        return native.get('language');
    }
    function set_language(value: String): String {
      native.set('language', value);
        return value;
    }
    public var linesSkipped(get, set): Int;
    function get_linesSkipped(): Int {
        return native.get('lines_skipped');
    }
    function set_linesSkipped(value: Int): Int {
      native.set('lines_skipped', value);
        return value;
    }
    public var maxLinesVisible(get, set): Int;
    function get_maxLinesVisible(): Int {
        return native.get('max_lines_visible');
    }
    function set_maxLinesVisible(value: Int): Int {
      native.set('max_lines_visible', value);
        return value;
    }
    public var paragraphSeparator(get, set): String;
    function get_paragraphSeparator(): String {
        return native.get('paragraph_separator');
    }
    function set_paragraphSeparator(value: String): String {
      native.set('paragraph_separator', value);
        return value;
    }
    public var structuredTextBidiOverride(get, set): Int;
    function get_structuredTextBidiOverride(): Int {
        return native.get('structured_text_bidi_override');
    }
    function set_structuredTextBidiOverride(value: Int): Int {
      native.set('structured_text_bidi_override', value);
        return value;
    }
    public var structuredTextBidiOverrideOptions(get, set): ArrayList;
    function get_structuredTextBidiOverrideOptions(): ArrayList {
        return native.get('structured_text_bidi_override_options');
    }
    function set_structuredTextBidiOverrideOptions(value: ArrayList): ArrayList {
      native.set('structured_text_bidi_override_options', value);
        return value;
    }
    public var tabStops(get, set): TypedArray<Float>;
    function get_tabStops(): TypedArray<Float> {
        return native.get('tab_stops');
    }
    function set_tabStops(value: TypedArray<Float>): TypedArray<Float> {
      native.set('tab_stops', value);
        return value;
    }
    public var text(get, set): String;
    function get_text(): String {
        return native.get('text');
    }
    function set_text(value: String): String {
      native.set('text', value);
        return value;
    }
    public var textDirection(get, set): Int;
    function get_textDirection(): Int {
        return native.get('text_direction');
    }
    function set_textDirection(value: Int): Int {
      native.set('text_direction', value);
        return value;
    }
    public var textOverrunBehavior(get, set): Int;
    function get_textOverrunBehavior(): Int {
        return native.get('text_overrun_behavior');
    }
    function set_textOverrunBehavior(value: Int): Int {
      native.set('text_overrun_behavior', value);
        return value;
    }
    public var uppercase(get, set): Bool;
    function get_uppercase(): Bool {
        return native.get('uppercase');
    }
    function set_uppercase(value: Bool): Bool {
      native.set('uppercase', value);
        return value;
    }
    public var verticalAlignment(get, set): Int;
    function get_verticalAlignment(): Int {
        return native.get('vertical_alignment');
    }
    function set_verticalAlignment(value: Int): Int {
      native.set('vertical_alignment', value);
        return value;
    }
    public var visibleCharacters(get, set): Int;
    function get_visibleCharacters(): Int {
        return native.get('visible_characters');
    }
    function set_visibleCharacters(value: Int): Int {
      native.set('visible_characters', value);
        return value;
    }
    public var visibleCharactersBehavior(get, set): Int;
    function get_visibleCharactersBehavior(): Int {
        return native.get('visible_characters_behavior');
    }
    function set_visibleCharactersBehavior(value: Int): Int {
      native.set('visible_characters_behavior', value);
        return value;
    }
    public var visibleRatio(get, set): Float;
    function get_visibleRatio(): Float {
        return native.get('visible_ratio');
    }
    function set_visibleRatio(value: Float): Float {
      native.set('visible_ratio', value);
        return value;
    }


  public function getCharacterBounds(pos: Int): Rect2 {
      var args = new ArrayList();
      args.append(pos);
      return native.call('get_character_bounds', args);
  }
  public function getLineCount(): Int {
      var args = new ArrayList();
      return native.call('get_line_count', args);
  }
  public function getLineHeight(?line: Int): Int {
      var args = new ArrayList();
      if (line != null) {
          args.append(line);
      }
      return native.call('get_line_height', args);
  }
  public function getTotalCharacterCount(): Int {
      var args = new ArrayList();
      return native.call('get_total_character_count', args);
  }
  public function getVisibleLineCount(): Int {
      var args = new ArrayList();
      return native.call('get_visible_line_count', args);
  }
}
