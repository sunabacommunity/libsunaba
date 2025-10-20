package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;
import newhaven.core.TypedArray;
import newhaven.core.Color;
import newhaven.Texture2D;
import newhaven.core.Rect2;
import newhaven.core.Vector2i;
import newhaven.desktop.PopupMenu;
import newhaven.core.Rect2i;
import newhaven.core.Dictionary;
import newhaven.Font;
import newhaven.core.Vector2;

class RichTextLabel extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('RichTextLabel');
        }
        native = _native;
    }

    public var autowrapMode(get, set): Int;
    function get_autowrapMode(): Int {
        return native.get('autowrap_mode');
    }
    function set_autowrapMode(value: Int): Int {
      native.set('autowrap_mode', value);
        return value;
    }
    public var autowrapTrimFlags(get, set): Int;
    function get_autowrapTrimFlags(): Int {
        return native.get('autowrap_trim_flags');
    }
    function set_autowrapTrimFlags(value: Int): Int {
      native.set('autowrap_trim_flags', value);
        return value;
    }
    public var bbcodeEnabled(get, set): Bool;
    function get_bbcodeEnabled(): Bool {
        return native.get('bbcode_enabled');
    }
    function set_bbcodeEnabled(value: Bool): Bool {
      native.set('bbcode_enabled', value);
        return value;
    }
    public var contextMenuEnabled(get, set): Bool;
    function get_contextMenuEnabled(): Bool {
        return native.get('context_menu_enabled');
    }
    function set_contextMenuEnabled(value: Bool): Bool {
      native.set('context_menu_enabled', value);
        return value;
    }
    public var customEffects(get, set): ArrayList;
    function get_customEffects(): ArrayList {
        return native.get('custom_effects');
    }
    function set_customEffects(value: ArrayList): ArrayList {
      native.set('custom_effects', value);
        return value;
    }
    public var deselectOnFocusLossEnabled(get, set): Bool;
    function get_deselectOnFocusLossEnabled(): Bool {
        return native.get('deselect_on_focus_loss_enabled');
    }
    function set_deselectOnFocusLossEnabled(value: Bool): Bool {
      native.set('deselect_on_focus_loss_enabled', value);
        return value;
    }
    public var dragAndDropSelectionEnabled(get, set): Bool;
    function get_dragAndDropSelectionEnabled(): Bool {
        return native.get('drag_and_drop_selection_enabled');
    }
    function set_dragAndDropSelectionEnabled(value: Bool): Bool {
      native.set('drag_and_drop_selection_enabled', value);
        return value;
    }
    public var fitContent(get, set): Bool;
    function get_fitContent(): Bool {
        return native.get('fit_content');
    }
    function set_fitContent(value: Bool): Bool {
      native.set('fit_content', value);
        return value;
    }
    public var hintUnderlined(get, set): Bool;
    function get_hintUnderlined(): Bool {
        return native.get('hint_underlined');
    }
    function set_hintUnderlined(value: Bool): Bool {
      native.set('hint_underlined', value);
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
    public var language(get, set): String;
    function get_language(): String {
        return native.get('language');
    }
    function set_language(value: String): String {
      native.set('language', value);
        return value;
    }
    public var metaUnderlined(get, set): Bool;
    function get_metaUnderlined(): Bool {
        return native.get('meta_underlined');
    }
    function set_metaUnderlined(value: Bool): Bool {
      native.set('meta_underlined', value);
        return value;
    }
    public var progressBarDelay(get, set): Int;
    function get_progressBarDelay(): Int {
        return native.get('progress_bar_delay');
    }
    function set_progressBarDelay(value: Int): Int {
      native.set('progress_bar_delay', value);
        return value;
    }
    public var scrollActive(get, set): Bool;
    function get_scrollActive(): Bool {
        return native.get('scroll_active');
    }
    function set_scrollActive(value: Bool): Bool {
      native.set('scroll_active', value);
        return value;
    }
    public var scrollFollowing(get, set): Bool;
    function get_scrollFollowing(): Bool {
        return native.get('scroll_following');
    }
    function set_scrollFollowing(value: Bool): Bool {
      native.set('scroll_following', value);
        return value;
    }
    public var scrollFollowingVisibleCharacters(get, set): Bool;
    function get_scrollFollowingVisibleCharacters(): Bool {
        return native.get('scroll_following_visible_characters');
    }
    function set_scrollFollowingVisibleCharacters(value: Bool): Bool {
      native.set('scroll_following_visible_characters', value);
        return value;
    }
    public var selectionEnabled(get, set): Bool;
    function get_selectionEnabled(): Bool {
        return native.get('selection_enabled');
    }
    function set_selectionEnabled(value: Bool): Bool {
      native.set('selection_enabled', value);
        return value;
    }
    public var shortcutKeysEnabled(get, set): Bool;
    function get_shortcutKeysEnabled(): Bool {
        return native.get('shortcut_keys_enabled');
    }
    function set_shortcutKeysEnabled(value: Bool): Bool {
      native.set('shortcut_keys_enabled', value);
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
    public var tabSize(get, set): Int;
    function get_tabSize(): Int {
        return native.get('tab_size');
    }
    function set_tabSize(value: Int): Int {
      native.set('tab_size', value);
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
    public var threaded(get, set): Bool;
    function get_threaded(): Bool {
        return native.get('threaded');
    }
    function set_threaded(value: Bool): Bool {
      native.set('threaded', value);
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

  public function addHr(?width: Int, ?height: Int, ?color: Color, ?alignment: Int, ?widthInPercent: Bool, ?heightInPercent: Bool): Void {
      var args = new ArrayList();
      if (width != null) {
          args.append(width);
      }
      if (height != null) {
          args.append(height);
      }
      if (color != null) {
          args.append(color);
      }
      if (alignment != null) {
          args.append(alignment);
      }
      if (widthInPercent != null) {
          args.append(widthInPercent);
      }
      if (heightInPercent != null) {
          args.append(heightInPercent);
      }
      native.call('add_hr', args);
  }
  public function addImage(image: Texture2D, ?width: Int, ?height: Int, ?color: Color, ?inlineAlign: Int, ?region: Rect2, ?key: Variant, ?pad: Bool, ?tooltip: String, ?widthInPercent: Bool, ?heightInPercent: Bool, ?altText: String): Void {
      var args = new ArrayList();
      args.append(image.native);
      if (width != null) {
          args.append(width);
      }
      if (height != null) {
          args.append(height);
      }
      if (color != null) {
          args.append(color);
      }
      if (inlineAlign != null) {
          args.append(inlineAlign);
      }
      if (region != null) {
          args.append(region);
      }
      if (key != null) {
          args.append(key);
      }
      if (pad != null) {
          args.append(pad);
      }
      if (tooltip != null) {
          args.append(tooltip);
      }
      if (widthInPercent != null) {
          args.append(widthInPercent);
      }
      if (heightInPercent != null) {
          args.append(heightInPercent);
      }
      if (altText != null) {
          args.append(altText);
      }
      native.call('add_image', args);
  }
  public function addText(text: String): Void {
      var args = new ArrayList();
      args.append(text);
      native.call('add_text', args);
  }
  public function appendText(bbcode: String): Void {
      var args = new ArrayList();
      args.append(bbcode);
      native.call('append_text', args);
  }
  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function deselect(): Void {
      var args = new ArrayList();
      native.call('deselect', args);
  }
  public function getCharacterLine(character: Int): Int {
      var args = new ArrayList();
      args.append(character);
      return native.call('get_character_line', args);
  }
  public function getCharacterParagraph(character: Int): Int {
      var args = new ArrayList();
      args.append(character);
      return native.call('get_character_paragraph', args);
  }
  public function getContentHeight(): Int {
      var args = new ArrayList();
      return native.call('get_content_height', args);
  }
  public function getContentWidth(): Int {
      var args = new ArrayList();
      return native.call('get_content_width', args);
  }
  public function getLineCount(): Int {
      var args = new ArrayList();
      return native.call('get_line_count', args);
  }
  public function getLineHeight(line: Int): Int {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_line_height', args);
  }
  public function getLineOffset(line: Int): Float {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_line_offset', args);
  }
  public function getLineRange(line: Int): Vector2i {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_line_range', args);
  }
  public function getLineWidth(line: Int): Int {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_line_width', args);
  }
  public function getMenu(): PopupMenu {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_menu', args);
      return new PopupMenu(ref);
  }
  public function getParagraphCount(): Int {
      var args = new ArrayList();
      return native.call('get_paragraph_count', args);
  }
  public function getParagraphOffset(paragraph: Int): Float {
      var args = new ArrayList();
      args.append(paragraph);
      return native.call('get_paragraph_offset', args);
  }
  public function getParsedText(): String {
      var args = new ArrayList();
      return native.call('get_parsed_text', args);
  }
  public function getSelectedText(): String {
      var args = new ArrayList();
      return native.call('get_selected_text', args);
  }
  public function getSelectionFrom(): Int {
      var args = new ArrayList();
      return native.call('get_selection_from', args);
  }
  public function getSelectionLineOffset(): Float {
      var args = new ArrayList();
      return native.call('get_selection_line_offset', args);
  }
  public function getSelectionTo(): Int {
      var args = new ArrayList();
      return native.call('get_selection_to', args);
  }
  public function getTotalCharacterCount(): Int {
      var args = new ArrayList();
      return native.call('get_total_character_count', args);
  }
  public function getVScrollBar(): VScrollBar {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_v_scroll_bar', args);
      return new VScrollBar(ref);
  }
  public function getVisibleContentRect(): Rect2i {
      var args = new ArrayList();
      return native.call('get_visible_content_rect', args);
  }
  public function getVisibleLineCount(): Int {
      var args = new ArrayList();
      return native.call('get_visible_line_count', args);
  }
  public function getVisibleParagraphCount(): Int {
      var args = new ArrayList();
      return native.call('get_visible_paragraph_count', args);
  }
  public function installEffect(effect: Variant): Void {
      var args = new ArrayList();
      args.append(effect);
      native.call('install_effect', args);
  }
  public function invalidateParagraph(paragraph: Int): Bool {
      var args = new ArrayList();
      args.append(paragraph);
      return native.call('invalidate_paragraph', args);
  }
  public function isFinished(): Bool {
      var args = new ArrayList();
      return native.call('is_finished', args);
  }
  public function isMenuVisible(): Bool {
      var args = new ArrayList();
      return native.call('is_menu_visible', args);
  }
  public function isReady(): Bool {
      var args = new ArrayList();
      return native.call('is_ready', args);
  }
  public function menuOption(option: Int): Void {
      var args = new ArrayList();
      args.append(option);
      native.call('menu_option', args);
  }
  public function newline(): Void {
      var args = new ArrayList();
      native.call('newline', args);
  }
  public function parseBbcode(bbcode: String): Void {
      var args = new ArrayList();
      args.append(bbcode);
      native.call('parse_bbcode', args);
  }
  public function parseExpressionsForValues(expressions: TypedArray<String>): Dictionary {
      var args = new ArrayList();
      args.append(expressions);
      return native.call('parse_expressions_for_values', args);
  }
  public function pop(): Void {
      var args = new ArrayList();
      native.call('pop', args);
  }
  public function popAll(): Void {
      var args = new ArrayList();
      native.call('pop_all', args);
  }
  public function popContext(): Void {
      var args = new ArrayList();
      native.call('pop_context', args);
  }
  public function pushBgcolor(bgcolor: Color): Void {
      var args = new ArrayList();
      args.append(bgcolor);
      native.call('push_bgcolor', args);
  }
  public function pushBold(): Void {
      var args = new ArrayList();
      native.call('push_bold', args);
  }
  public function pushBoldItalics(): Void {
      var args = new ArrayList();
      native.call('push_bold_italics', args);
  }
  public function pushCell(): Void {
      var args = new ArrayList();
      native.call('push_cell', args);
  }
  public function pushColor(color: Color): Void {
      var args = new ArrayList();
      args.append(color);
      native.call('push_color', args);
  }
  public function pushContext(): Void {
      var args = new ArrayList();
      native.call('push_context', args);
  }
  public function pushCustomfx(effect: RichTextEffect, env: Dictionary): Void {
      var args = new ArrayList();
      args.append(effect.native);
      args.append(env);
      native.call('push_customfx', args);
  }
  public function pushDropcap(string: String, font: Font, size: Int, ?dropcapMargins: Rect2, ?color: Color, ?outlineSize: Int, ?outlineColor: Color): Void {
      var args = new ArrayList();
      args.append(string);
      args.append(font.native);
      args.append(size);
      if (dropcapMargins != null) {
          args.append(dropcapMargins);
      }
      if (color != null) {
          args.append(color);
      }
      if (outlineSize != null) {
          args.append(outlineSize);
      }
      if (outlineColor != null) {
          args.append(outlineColor);
      }
      native.call('push_dropcap', args);
  }
  public function pushFgcolor(fgcolor: Color): Void {
      var args = new ArrayList();
      args.append(fgcolor);
      native.call('push_fgcolor', args);
  }
  public function pushFont(font: Font, ?fontSize: Int): Void {
      var args = new ArrayList();
      args.append(font.native);
      if (fontSize != null) {
          args.append(fontSize);
      }
      native.call('push_font', args);
  }
  public function pushFontSize(fontSize: Int): Void {
      var args = new ArrayList();
      args.append(fontSize);
      native.call('push_font_size', args);
  }
  public function pushHint(description: String): Void {
      var args = new ArrayList();
      args.append(description);
      native.call('push_hint', args);
  }
  public function pushIndent(level: Int): Void {
      var args = new ArrayList();
      args.append(level);
      native.call('push_indent', args);
  }
  public function pushItalics(): Void {
      var args = new ArrayList();
      native.call('push_italics', args);
  }
  public function pushLanguage(language: String): Void {
      var args = new ArrayList();
      args.append(language);
      native.call('push_language', args);
  }
  public function pushList(level: Int, type: Int, capitalize: Bool, ?bullet: String): Void {
      var args = new ArrayList();
      args.append(level);
      args.append(type);
      args.append(capitalize);
      if (bullet != null) {
          args.append(bullet);
      }
      native.call('push_list', args);
  }
  public function pushMeta(data: Variant, ?underlineMode: Int, ?tooltip: String): Void {
      var args = new ArrayList();
      args.append(data);
      if (underlineMode != null) {
          args.append(underlineMode);
      }
      if (tooltip != null) {
          args.append(tooltip);
      }
      native.call('push_meta', args);
  }
  public function pushMono(): Void {
      var args = new ArrayList();
      native.call('push_mono', args);
  }
  public function pushNormal(): Void {
      var args = new ArrayList();
      native.call('push_normal', args);
  }
  public function pushOutlineColor(color: Color): Void {
      var args = new ArrayList();
      args.append(color);
      native.call('push_outline_color', args);
  }
  public function pushOutlineSize(outlineSize: Int): Void {
      var args = new ArrayList();
      args.append(outlineSize);
      native.call('push_outline_size', args);
  }
  public function pushParagraph(alignment: Int, ?baseDirection: Int, ?language: String, ?stParser: Int, ?justificationFlags: Int, ?tabStops: TypedArray<Float>): Void {
      var args = new ArrayList();
      args.append(alignment);
      if (baseDirection != null) {
          args.append(baseDirection);
      }
      if (language != null) {
          args.append(language);
      }
      if (stParser != null) {
          args.append(stParser);
      }
      if (justificationFlags != null) {
          args.append(justificationFlags);
      }
      if (tabStops != null) {
          args.append(tabStops);
      }
      native.call('push_paragraph', args);
  }
  public function pushStrikethrough(?color: Color): Void {
      var args = new ArrayList();
      if (color != null) {
          args.append(color);
      }
      native.call('push_strikethrough', args);
  }
  public function pushTable(columns: Int, ?inlineAlign: Int, ?alignToRow: Int, ?name: String): Void {
      var args = new ArrayList();
      args.append(columns);
      if (inlineAlign != null) {
          args.append(inlineAlign);
      }
      if (alignToRow != null) {
          args.append(alignToRow);
      }
      if (name != null) {
          args.append(name);
      }
      native.call('push_table', args);
  }
  public function pushUnderline(?color: Color): Void {
      var args = new ArrayList();
      if (color != null) {
          args.append(color);
      }
      native.call('push_underline', args);
  }
  public function reloadEffects(): Void {
      var args = new ArrayList();
      native.call('reload_effects', args);
  }
  public function removeParagraph(paragraph: Int, ?noInvalidate: Bool): Bool {
      var args = new ArrayList();
      args.append(paragraph);
      if (noInvalidate != null) {
          args.append(noInvalidate);
      }
      return native.call('remove_paragraph', args);
  }
  public function scrollToLine(line: Int): Void {
      var args = new ArrayList();
      args.append(line);
      native.call('scroll_to_line', args);
  }
  public function scrollToParagraph(paragraph: Int): Void {
      var args = new ArrayList();
      args.append(paragraph);
      native.call('scroll_to_paragraph', args);
  }
  public function scrollToSelection(): Void {
      var args = new ArrayList();
      native.call('scroll_to_selection', args);
  }
  public function selectAll(): Void {
      var args = new ArrayList();
      native.call('select_all', args);
  }
  public function setCellBorderColor(color: Color): Void {
      var args = new ArrayList();
      args.append(color);
      native.call('set_cell_border_color', args);
  }
  public function setCellPadding(padding: Rect2): Void {
      var args = new ArrayList();
      args.append(padding);
      native.call('set_cell_padding', args);
  }
  public function setCellRowBackgroundColor(oddRowBg: Color, evenRowBg: Color): Void {
      var args = new ArrayList();
      args.append(oddRowBg);
      args.append(evenRowBg);
      native.call('set_cell_row_background_color', args);
  }
  public function setCellSizeOverride(minSize: Vector2, maxSize: Vector2): Void {
      var args = new ArrayList();
      args.append(minSize);
      args.append(maxSize);
      native.call('set_cell_size_override', args);
  }
  public function setTableColumnExpand(column: Int, expand: Bool, ?ratio: Int, ?shrink: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(expand);
      if (ratio != null) {
          args.append(ratio);
      }
      if (shrink != null) {
          args.append(shrink);
      }
      native.call('set_table_column_expand', args);
  }
  public function setTableColumnName(column: Int, name: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(name);
      native.call('set_table_column_name', args);
  }
  public function updateImage(key: Variant, mask: Int, image: Texture2D, ?width: Int, ?height: Int, ?color: Color, ?inlineAlign: Int, ?region: Rect2, ?pad: Bool, ?tooltip: String, ?widthInPercent: Bool, ?heightInPercent: Bool): Void {
      var args = new ArrayList();
      args.append(key);
      args.append(mask);
      args.append(image.native);
      if (width != null) {
          args.append(width);
      }
      if (height != null) {
          args.append(height);
      }
      if (color != null) {
          args.append(color);
      }
      if (inlineAlign != null) {
          args.append(inlineAlign);
      }
      if (region != null) {
          args.append(region);
      }
      if (pad != null) {
          args.append(pad);
      }
      if (tooltip != null) {
          args.append(tooltip);
      }
      if (widthInPercent != null) {
          args.append(widthInPercent);
      }
      if (heightInPercent != null) {
          args.append(heightInPercent);
      }
      native.call('update_image', args);
  }
}
