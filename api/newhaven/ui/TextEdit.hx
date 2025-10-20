package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;
import newhaven.core.Signal;
import newhaven.core.Vector2;
import newhaven.core.TypedArray;
import newhaven.core.Color;
import newhaven.core.Vector2i;
import newhaven.Texture2D;
import newhaven.desktop.PopupMenu;
import newhaven.core.Rect2i;

class TextEdit extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('TextEdit');
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
    public var backspaceDeletesCompositeCharacterEnabled(get, set): Bool;
    function get_backspaceDeletesCompositeCharacterEnabled(): Bool {
        return native.get('backspace_deletes_composite_character_enabled');
    }
    function set_backspaceDeletesCompositeCharacterEnabled(value: Bool): Bool {
      native.set('backspace_deletes_composite_character_enabled', value);
        return value;
    }
    public var caretBlink(get, set): Bool;
    function get_caretBlink(): Bool {
        return native.get('caret_blink');
    }
    function set_caretBlink(value: Bool): Bool {
      native.set('caret_blink', value);
        return value;
    }
    public var caretBlinkInterval(get, set): Float;
    function get_caretBlinkInterval(): Float {
        return native.get('caret_blink_interval');
    }
    function set_caretBlinkInterval(value: Float): Float {
      native.set('caret_blink_interval', value);
        return value;
    }
    public var caretDrawWhenEditableDisabled(get, set): Bool;
    function get_caretDrawWhenEditableDisabled(): Bool {
        return native.get('caret_draw_when_editable_disabled');
    }
    function set_caretDrawWhenEditableDisabled(value: Bool): Bool {
      native.set('caret_draw_when_editable_disabled', value);
        return value;
    }
    public var caretMidGrapheme(get, set): Bool;
    function get_caretMidGrapheme(): Bool {
        return native.get('caret_mid_grapheme');
    }
    function set_caretMidGrapheme(value: Bool): Bool {
      native.set('caret_mid_grapheme', value);
        return value;
    }
    public var caretMoveOnRightClick(get, set): Bool;
    function get_caretMoveOnRightClick(): Bool {
        return native.get('caret_move_on_right_click');
    }
    function set_caretMoveOnRightClick(value: Bool): Bool {
      native.set('caret_move_on_right_click', value);
        return value;
    }
    public var caretMultiple(get, set): Bool;
    function get_caretMultiple(): Bool {
        return native.get('caret_multiple');
    }
    function set_caretMultiple(value: Bool): Bool {
      native.set('caret_multiple', value);
        return value;
    }
    public var caretType(get, set): Int;
    function get_caretType(): Int {
        return native.get('caret_type');
    }
    function set_caretType(value: Int): Int {
      native.set('caret_type', value);
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
    public var customWordSeparators(get, set): String;
    function get_customWordSeparators(): String {
        return native.get('custom_word_separators');
    }
    function set_customWordSeparators(value: String): String {
      native.set('custom_word_separators', value);
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
    public var drawControlChars(get, set): Bool;
    function get_drawControlChars(): Bool {
        return native.get('draw_control_chars');
    }
    function set_drawControlChars(value: Bool): Bool {
      native.set('draw_control_chars', value);
        return value;
    }
    public var drawSpaces(get, set): Bool;
    function get_drawSpaces(): Bool {
        return native.get('draw_spaces');
    }
    function set_drawSpaces(value: Bool): Bool {
      native.set('draw_spaces', value);
        return value;
    }
    public var drawTabs(get, set): Bool;
    function get_drawTabs(): Bool {
        return native.get('draw_tabs');
    }
    function set_drawTabs(value: Bool): Bool {
      native.set('draw_tabs', value);
        return value;
    }
    public var editable(get, set): Bool;
    function get_editable(): Bool {
        return native.get('editable');
    }
    function set_editable(value: Bool): Bool {
      native.set('editable', value);
        return value;
    }
    public var emojiMenuEnabled(get, set): Bool;
    function get_emojiMenuEnabled(): Bool {
        return native.get('emoji_menu_enabled');
    }
    function set_emojiMenuEnabled(value: Bool): Bool {
      native.set('emoji_menu_enabled', value);
        return value;
    }
    public var emptySelectionClipboardEnabled(get, set): Bool;
    function get_emptySelectionClipboardEnabled(): Bool {
        return native.get('empty_selection_clipboard_enabled');
    }
    function set_emptySelectionClipboardEnabled(value: Bool): Bool {
      native.set('empty_selection_clipboard_enabled', value);
        return value;
    }
    public var highlightAllOccurrences(get, set): Bool;
    function get_highlightAllOccurrences(): Bool {
        return native.get('highlight_all_occurrences');
    }
    function set_highlightAllOccurrences(value: Bool): Bool {
      native.set('highlight_all_occurrences', value);
        return value;
    }
    public var highlightCurrentLine(get, set): Bool;
    function get_highlightCurrentLine(): Bool {
        return native.get('highlight_current_line');
    }
    function set_highlightCurrentLine(value: Bool): Bool {
      native.set('highlight_current_line', value);
        return value;
    }
    public var indentWrappedLines(get, set): Bool;
    function get_indentWrappedLines(): Bool {
        return native.get('indent_wrapped_lines');
    }
    function set_indentWrappedLines(value: Bool): Bool {
      native.set('indent_wrapped_lines', value);
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
    public var middleMousePasteEnabled(get, set): Bool;
    function get_middleMousePasteEnabled(): Bool {
        return native.get('middle_mouse_paste_enabled');
    }
    function set_middleMousePasteEnabled(value: Bool): Bool {
      native.set('middle_mouse_paste_enabled', value);
        return value;
    }
    public var minimapDraw(get, set): Bool;
    function get_minimapDraw(): Bool {
        return native.get('minimap_draw');
    }
    function set_minimapDraw(value: Bool): Bool {
      native.set('minimap_draw', value);
        return value;
    }
    public var minimapWidth(get, set): Int;
    function get_minimapWidth(): Int {
        return native.get('minimap_width');
    }
    function set_minimapWidth(value: Int): Int {
      native.set('minimap_width', value);
        return value;
    }
    public var placeholderText(get, set): String;
    function get_placeholderText(): String {
        return native.get('placeholder_text');
    }
    function set_placeholderText(value: String): String {
      native.set('placeholder_text', value);
        return value;
    }
    public var scrollFitContentHeight(get, set): Bool;
    function get_scrollFitContentHeight(): Bool {
        return native.get('scroll_fit_content_height');
    }
    function set_scrollFitContentHeight(value: Bool): Bool {
      native.set('scroll_fit_content_height', value);
        return value;
    }
    public var scrollFitContentWidth(get, set): Bool;
    function get_scrollFitContentWidth(): Bool {
        return native.get('scroll_fit_content_width');
    }
    function set_scrollFitContentWidth(value: Bool): Bool {
      native.set('scroll_fit_content_width', value);
        return value;
    }
    public var scrollHorizontal(get, set): Int;
    function get_scrollHorizontal(): Int {
        return native.get('scroll_horizontal');
    }
    function set_scrollHorizontal(value: Int): Int {
      native.set('scroll_horizontal', value);
        return value;
    }
    public var scrollPastEndOfFile(get, set): Bool;
    function get_scrollPastEndOfFile(): Bool {
        return native.get('scroll_past_end_of_file');
    }
    function set_scrollPastEndOfFile(value: Bool): Bool {
      native.set('scroll_past_end_of_file', value);
        return value;
    }
    public var scrollSmooth(get, set): Bool;
    function get_scrollSmooth(): Bool {
        return native.get('scroll_smooth');
    }
    function set_scrollSmooth(value: Bool): Bool {
      native.set('scroll_smooth', value);
        return value;
    }
    public var scrollVScrollSpeed(get, set): Float;
    function get_scrollVScrollSpeed(): Float {
        return native.get('scroll_v_scroll_speed');
    }
    function set_scrollVScrollSpeed(value: Float): Float {
      native.set('scroll_v_scroll_speed', value);
        return value;
    }
    public var scrollVertical(get, set): Float;
    function get_scrollVertical(): Float {
        return native.get('scroll_vertical');
    }
    function set_scrollVertical(value: Float): Float {
      native.set('scroll_vertical', value);
        return value;
    }
    public var selectingEnabled(get, set): Bool;
    function get_selectingEnabled(): Bool {
        return native.get('selecting_enabled');
    }
    function set_selectingEnabled(value: Bool): Bool {
      native.set('selecting_enabled', value);
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
    public var syntaxHighlighter(get, set): SyntaxHighlighter;
    function get_syntaxHighlighter(): SyntaxHighlighter {
        var ref: NativeReference = native.get('syntax_highlighter');
        return new SyntaxHighlighter(ref);
    }
    function set_syntaxHighlighter(value: SyntaxHighlighter): SyntaxHighlighter {
      native.set('syntax_highlighter', value.native);
        return value;
    }
    public var tabInputMode(get, set): Bool;
    function get_tabInputMode(): Bool {
        return native.get('tab_input_mode');
    }
    function set_tabInputMode(value: Bool): Bool {
      native.set('tab_input_mode', value);
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
    public var useCustomWordSeparators(get, set): Bool;
    function get_useCustomWordSeparators(): Bool {
        return native.get('use_custom_word_separators');
    }
    function set_useCustomWordSeparators(value: Bool): Bool {
      native.set('use_custom_word_separators', value);
        return value;
    }
    public var useDefaultWordSeparators(get, set): Bool;
    function get_useDefaultWordSeparators(): Bool {
        return native.get('use_default_word_separators');
    }
    function set_useDefaultWordSeparators(value: Bool): Bool {
      native.set('use_default_word_separators', value);
        return value;
    }
    public var virtualKeyboardEnabled(get, set): Bool;
    function get_virtualKeyboardEnabled(): Bool {
        return native.get('virtual_keyboard_enabled');
    }
    function set_virtualKeyboardEnabled(value: Bool): Bool {
      native.set('virtual_keyboard_enabled', value);
        return value;
    }
    public var virtualKeyboardShowOnFocus(get, set): Bool;
    function get_virtualKeyboardShowOnFocus(): Bool {
        return native.get('virtual_keyboard_show_on_focus');
    }
    function set_virtualKeyboardShowOnFocus(value: Bool): Bool {
      native.set('virtual_keyboard_show_on_focus', value);
        return value;
    }
    public var wrapMode(get, set): Int;
    function get_wrapMode(): Int {
        return native.get('wrap_mode');
    }
    function set_wrapMode(value: Int): Int {
      native.set('wrap_mode', value);
        return value;
    }

	private var _caretChanged: Signal;
	public var caretChanged(get, default): Signal;
	function get_caretChanged(): Signal {
	    if (_caretChanged == null) {
	        _caretChanged = Signal.createFromObject(native, 'caret_changed');
	    }
	    return _caretChanged;
	}
	private var _gutterAdded: Signal;
	public var gutterAdded(get, default): Signal;
	function get_gutterAdded(): Signal {
	    if (_gutterAdded == null) {
	        _gutterAdded = Signal.createFromObject(native, 'gutter_added');
	    }
	    return _gutterAdded;
	}
	private var _gutterClicked: Signal;
	public var gutterClicked(get, default): Signal;
	function get_gutterClicked(): Signal {
	    if (_gutterClicked == null) {
	        _gutterClicked = Signal.createFromObject(native, 'gutter_clicked');
	    }
	    return _gutterClicked;
	}
	private var _gutterRemoved: Signal;
	public var gutterRemoved(get, default): Signal;
	function get_gutterRemoved(): Signal {
	    if (_gutterRemoved == null) {
	        _gutterRemoved = Signal.createFromObject(native, 'gutter_removed');
	    }
	    return _gutterRemoved;
	}
	private var _linesEditedFrom: Signal;
	public var linesEditedFrom(get, default): Signal;
	function get_linesEditedFrom(): Signal {
	    if (_linesEditedFrom == null) {
	        _linesEditedFrom = Signal.createFromObject(native, 'lines_edited_from');
	    }
	    return _linesEditedFrom;
	}
	private var _textChanged: Signal;
	public var textChanged(get, default): Signal;
	function get_textChanged(): Signal {
	    if (_textChanged == null) {
	        _textChanged = Signal.createFromObject(native, 'text_changed');
	    }
	    return _textChanged;
	}
	private var _textSet: Signal;
	public var textSet(get, default): Signal;
	function get_textSet(): Signal {
	    if (_textSet == null) {
	        _textSet = Signal.createFromObject(native, 'text_set');
	    }
	    return _textSet;
	}

  public function addCaret(line: Int, column: Int): Int {
      var args = new ArrayList();
      args.append(line);
      args.append(column);
      return native.call('add_caret', args);
  }
  public function addCaretAtCarets(below: Bool): Void {
      var args = new ArrayList();
      args.append(below);
      native.call('add_caret_at_carets', args);
  }
  public function addGutter(?at: Int): Void {
      var args = new ArrayList();
      if (at != null) {
          args.append(at);
      }
      native.call('add_gutter', args);
  }
  public function addSelectionForNextOccurrence(): Void {
      var args = new ArrayList();
      native.call('add_selection_for_next_occurrence', args);
  }
  public function adjustCaretsAfterEdit(caret: Int, fromLine: Int, fromCol: Int, toLine: Int, toCol: Int): Void {
      var args = new ArrayList();
      args.append(caret);
      args.append(fromLine);
      args.append(fromCol);
      args.append(toLine);
      args.append(toCol);
      native.call('adjust_carets_after_edit', args);
  }
  public function adjustViewportToCaret(?caretIndex: Int): Void {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('adjust_viewport_to_caret', args);
  }
  public function applyIme(): Void {
      var args = new ArrayList();
      native.call('apply_ime', args);
  }
  public function backspace(?caretIndex: Int): Void {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('backspace', args);
  }
  public function beginComplexOperation(): Void {
      var args = new ArrayList();
      native.call('begin_complex_operation', args);
  }
  public function beginMulticaretEdit(): Void {
      var args = new ArrayList();
      native.call('begin_multicaret_edit', args);
  }
  public function cancelIme(): Void {
      var args = new ArrayList();
      native.call('cancel_ime', args);
  }
  public function centerViewportToCaret(?caretIndex: Int): Void {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('center_viewport_to_caret', args);
  }
  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function clearUndoHistory(): Void {
      var args = new ArrayList();
      native.call('clear_undo_history', args);
  }
  public function collapseCarets(fromLine: Int, fromColumn: Int, toLine: Int, toColumn: Int, ?inclusive: Bool): Void {
      var args = new ArrayList();
      args.append(fromLine);
      args.append(fromColumn);
      args.append(toLine);
      args.append(toColumn);
      if (inclusive != null) {
          args.append(inclusive);
      }
      native.call('collapse_carets', args);
  }
  public function copy(?caretIndex: Int): Void {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('copy', args);
  }
  public function cut(?caretIndex: Int): Void {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('cut', args);
  }
  public function deleteSelection(?caretIndex: Int): Void {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('delete_selection', args);
  }
  public function deselect(?caretIndex: Int): Void {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('deselect', args);
  }
  public function endAction(): Void {
      var args = new ArrayList();
      native.call('end_action', args);
  }
  public function endComplexOperation(): Void {
      var args = new ArrayList();
      native.call('end_complex_operation', args);
  }
  public function endMulticaretEdit(): Void {
      var args = new ArrayList();
      native.call('end_multicaret_edit', args);
  }
  public function getCaretColumn(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_caret_column', args);
  }
  public function getCaretCount(): Int {
      var args = new ArrayList();
      return native.call('get_caret_count', args);
  }
  public function getCaretDrawPos(?caretIndex: Int): Vector2 {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_caret_draw_pos', args);
  }
  public function getCaretIndexEditOrder(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('get_caret_index_edit_order', args);
  }
  public function getCaretLine(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_caret_line', args);
  }
  public function getCaretWrapIndex(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_caret_wrap_index', args);
  }
  public function getFirstNonWhitespaceColumn(line: Int): Int {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_first_non_whitespace_column', args);
  }
  public function getFirstVisibleLine(): Int {
      var args = new ArrayList();
      return native.call('get_first_visible_line', args);
  }
  public function getGutterCount(): Int {
      var args = new ArrayList();
      return native.call('get_gutter_count', args);
  }
  public function getGutterName(gutter: Int): String {
      var args = new ArrayList();
      args.append(gutter);
      return native.call('get_gutter_name', args);
  }
  public function getGutterType(gutter: Int): Int {
      var args = new ArrayList();
      args.append(gutter);
      return native.call('get_gutter_type', args);
  }
  public function getGutterWidth(gutter: Int): Int {
      var args = new ArrayList();
      args.append(gutter);
      return native.call('get_gutter_width', args);
  }
  public function getHScrollBar(): HScrollBar {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_h_scroll_bar', args);
      return new HScrollBar(ref);
  }
  public function getIndentLevel(line: Int): Int {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_indent_level', args);
  }
  public function getLastFullVisibleLine(): Int {
      var args = new ArrayList();
      return native.call('get_last_full_visible_line', args);
  }
  public function getLastFullVisibleLineWrapIndex(): Int {
      var args = new ArrayList();
      return native.call('get_last_full_visible_line_wrap_index', args);
  }
  public function getLastUnhiddenLine(): Int {
      var args = new ArrayList();
      return native.call('get_last_unhidden_line', args);
  }
  public function getLine(line: Int): String {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_line', args);
  }
  public function getLineBackgroundColor(line: Int): Color {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_line_background_color', args);
  }
  public function getLineColumnAtPos(position: Vector2i, ?clampLine: Bool, ?clampColumn: Bool): Vector2i {
      var args = new ArrayList();
      args.append(position);
      if (clampLine != null) {
          args.append(clampLine);
      }
      if (clampColumn != null) {
          args.append(clampColumn);
      }
      return native.call('get_line_column_at_pos', args);
  }
  public function getLineCount(): Int {
      var args = new ArrayList();
      return native.call('get_line_count', args);
  }
  public function getLineGutterIcon(line: Int, gutter: Int): Texture2D {
      var args = new ArrayList();
      args.append(line);
      args.append(gutter);
      var ref: NativeReference = native.call('get_line_gutter_icon', args);
      return new Texture2D(ref);
  }
  public function getLineGutterItemColor(line: Int, gutter: Int): Color {
      var args = new ArrayList();
      args.append(line);
      args.append(gutter);
      return native.call('get_line_gutter_item_color', args);
  }
  public function getLineGutterMetadata(line: Int, gutter: Int): Variant {
      var args = new ArrayList();
      args.append(line);
      args.append(gutter);
      return native.call('get_line_gutter_metadata', args);
  }
  public function getLineGutterText(line: Int, gutter: Int): String {
      var args = new ArrayList();
      args.append(line);
      args.append(gutter);
      return native.call('get_line_gutter_text', args);
  }
  public function getLineHeight(): Int {
      var args = new ArrayList();
      return native.call('get_line_height', args);
  }
  public function getLineWidth(line: Int, ?wrapIndex: Int): Int {
      var args = new ArrayList();
      args.append(line);
      if (wrapIndex != null) {
          args.append(wrapIndex);
      }
      return native.call('get_line_width', args);
  }
  public function getLineWithIme(line: Int): String {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_line_with_ime', args);
  }
  public function getLineWrapCount(line: Int): Int {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_line_wrap_count', args);
  }
  public function getLineWrapIndexAtColumn(line: Int, column: Int): Int {
      var args = new ArrayList();
      args.append(line);
      args.append(column);
      return native.call('get_line_wrap_index_at_column', args);
  }
  public function getLineWrappedText(line: Int): TypedArray<String> {
      var args = new ArrayList();
      args.append(line);
      return native.call('get_line_wrapped_text', args);
  }
  public function getLocalMousePos(): Vector2 {
      var args = new ArrayList();
      return native.call('get_local_mouse_pos', args);
  }
  public function getMenu(): PopupMenu {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_menu', args);
      return new PopupMenu(ref);
  }
  public function getMinimapLineAtPos(position: Vector2i): Int {
      var args = new ArrayList();
      args.append(position);
      return native.call('get_minimap_line_at_pos', args);
  }
  public function getMinimapVisibleLines(): Int {
      var args = new ArrayList();
      return native.call('get_minimap_visible_lines', args);
  }
  public function getNextCompositeCharacterColumn(line: Int, column: Int): Int {
      var args = new ArrayList();
      args.append(line);
      args.append(column);
      return native.call('get_next_composite_character_column', args);
  }
  public function getNextVisibleLineIndexOffsetFrom(line: Int, wrapIndex: Int, visibleAmount: Int): Vector2i {
      var args = new ArrayList();
      args.append(line);
      args.append(wrapIndex);
      args.append(visibleAmount);
      return native.call('get_next_visible_line_index_offset_from', args);
  }
  public function getNextVisibleLineOffsetFrom(line: Int, visibleAmount: Int): Int {
      var args = new ArrayList();
      args.append(line);
      args.append(visibleAmount);
      return native.call('get_next_visible_line_offset_from', args);
  }
  public function getPosAtLineColumn(line: Int, column: Int): Vector2i {
      var args = new ArrayList();
      args.append(line);
      args.append(column);
      return native.call('get_pos_at_line_column', args);
  }
  public function getPreviousCompositeCharacterColumn(line: Int, column: Int): Int {
      var args = new ArrayList();
      args.append(line);
      args.append(column);
      return native.call('get_previous_composite_character_column', args);
  }
  public function getRectAtLineColumn(line: Int, column: Int): Rect2i {
      var args = new ArrayList();
      args.append(line);
      args.append(column);
      return native.call('get_rect_at_line_column', args);
  }
  public function getSavedVersion(): Int {
      var args = new ArrayList();
      return native.call('get_saved_version', args);
  }
  public function getScrollPosForLine(line: Int, ?wrapIndex: Int): Float {
      var args = new ArrayList();
      args.append(line);
      if (wrapIndex != null) {
          args.append(wrapIndex);
      }
      return native.call('get_scroll_pos_for_line', args);
  }
  public function getSelectedText(?caretIndex: Int): String {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_selected_text', args);
  }
  public function getSelectionAtLineColumn(line: Int, column: Int, ?includeEdges: Bool, ?onlySelections: Bool): Int {
      var args = new ArrayList();
      args.append(line);
      args.append(column);
      if (includeEdges != null) {
          args.append(includeEdges);
      }
      if (onlySelections != null) {
          args.append(onlySelections);
      }
      return native.call('get_selection_at_line_column', args);
  }
  public function getSelectionColumn(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_selection_column', args);
  }
  public function getSelectionFromColumn(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_selection_from_column', args);
  }
  public function getSelectionFromLine(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_selection_from_line', args);
  }
  public function getSelectionLine(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_selection_line', args);
  }
  public function getSelectionMode(): Int {
      var args = new ArrayList();
      return native.call('get_selection_mode', args);
  }
  public function getSelectionOriginColumn(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_selection_origin_column', args);
  }
  public function getSelectionOriginLine(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_selection_origin_line', args);
  }
  public function getSelectionToColumn(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_selection_to_column', args);
  }
  public function getSelectionToLine(?caretIndex: Int): Int {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_selection_to_line', args);
  }
  public function getSortedCarets(?includeIgnoredCarets: Bool): TypedArray<Int> {
      var args = new ArrayList();
      if (includeIgnoredCarets != null) {
          args.append(includeIgnoredCarets);
      }
      return native.call('get_sorted_carets', args);
  }
  public function getTabSize(): Int {
      var args = new ArrayList();
      return native.call('get_tab_size', args);
  }
  public function getTotalGutterWidth(): Int {
      var args = new ArrayList();
      return native.call('get_total_gutter_width', args);
  }
  public function getTotalVisibleLineCount(): Int {
      var args = new ArrayList();
      return native.call('get_total_visible_line_count', args);
  }
  public function getVScrollBar(): VScrollBar {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_v_scroll_bar', args);
      return new VScrollBar(ref);
  }
  public function getVersion(): Int {
      var args = new ArrayList();
      return native.call('get_version', args);
  }
  public function getVisibleLineCount(): Int {
      var args = new ArrayList();
      return native.call('get_visible_line_count', args);
  }
  public function getVisibleLineCountInRange(fromLine: Int, toLine: Int): Int {
      var args = new ArrayList();
      args.append(fromLine);
      args.append(toLine);
      return native.call('get_visible_line_count_in_range', args);
  }
  public function getWordAtPos(position: Vector2): String {
      var args = new ArrayList();
      args.append(position);
      return native.call('get_word_at_pos', args);
  }
  public function getWordUnderCaret(?caretIndex: Int): String {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('get_word_under_caret', args);
  }
  public function hasImeText(): Bool {
      var args = new ArrayList();
      return native.call('has_ime_text', args);
  }
  public function hasRedo(): Bool {
      var args = new ArrayList();
      return native.call('has_redo', args);
  }
  public function hasSelection(?caretIndex: Int): Bool {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('has_selection', args);
  }
  public function hasUndo(): Bool {
      var args = new ArrayList();
      return native.call('has_undo', args);
  }
  public function insertLineAt(line: Int, text: String): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(text);
      native.call('insert_line_at', args);
  }
  public function insertText(text: String, line: Int, column: Int, ?beforeSelectionBegin: Bool, ?beforeSelectionEnd: Bool): Void {
      var args = new ArrayList();
      args.append(text);
      args.append(line);
      args.append(column);
      if (beforeSelectionBegin != null) {
          args.append(beforeSelectionBegin);
      }
      if (beforeSelectionEnd != null) {
          args.append(beforeSelectionEnd);
      }
      native.call('insert_text', args);
  }
  public function insertTextAtCaret(text: String, ?caretIndex: Int): Void {
      var args = new ArrayList();
      args.append(text);
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('insert_text_at_caret', args);
  }
  public function isCaretAfterSelectionOrigin(?caretIndex: Int): Bool {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('is_caret_after_selection_origin', args);
  }
  public function isCaretVisible(?caretIndex: Int): Bool {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('is_caret_visible', args);
  }
  public function isDraggingCursor(): Bool {
      var args = new ArrayList();
      return native.call('is_dragging_cursor', args);
  }
  public function isGutterClickable(gutter: Int): Bool {
      var args = new ArrayList();
      args.append(gutter);
      return native.call('is_gutter_clickable', args);
  }
  public function isGutterDrawn(gutter: Int): Bool {
      var args = new ArrayList();
      args.append(gutter);
      return native.call('is_gutter_drawn', args);
  }
  public function isGutterOverwritable(gutter: Int): Bool {
      var args = new ArrayList();
      args.append(gutter);
      return native.call('is_gutter_overwritable', args);
  }
  public function isInMulitcaretEdit(): Bool {
      var args = new ArrayList();
      return native.call('is_in_mulitcaret_edit', args);
  }
  public function isLineGutterClickable(line: Int, gutter: Int): Bool {
      var args = new ArrayList();
      args.append(line);
      args.append(gutter);
      return native.call('is_line_gutter_clickable', args);
  }
  public function isLineWrapped(line: Int): Bool {
      var args = new ArrayList();
      args.append(line);
      return native.call('is_line_wrapped', args);
  }
  public function isMenuVisible(): Bool {
      var args = new ArrayList();
      return native.call('is_menu_visible', args);
  }
  public function isMouseOverSelection(edges: Bool, ?caretIndex: Int): Bool {
      var args = new ArrayList();
      args.append(edges);
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      return native.call('is_mouse_over_selection', args);
  }
  public function isOvertypeModeEnabled(): Bool {
      var args = new ArrayList();
      return native.call('is_overtype_mode_enabled', args);
  }
  public function menuOption(option: Int): Void {
      var args = new ArrayList();
      args.append(option);
      native.call('menu_option', args);
  }
  public function mergeGutters(fromLine: Int, toLine: Int): Void {
      var args = new ArrayList();
      args.append(fromLine);
      args.append(toLine);
      native.call('merge_gutters', args);
  }
  public function mergeOverlappingCarets(): Void {
      var args = new ArrayList();
      native.call('merge_overlapping_carets', args);
  }
  public function multicaretEditIgnoreCaret(caretIndex: Int): Bool {
      var args = new ArrayList();
      args.append(caretIndex);
      return native.call('multicaret_edit_ignore_caret', args);
  }
  public function paste(?caretIndex: Int): Void {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('paste', args);
  }
  public function pastePrimaryClipboard(?caretIndex: Int): Void {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('paste_primary_clipboard', args);
  }
  public function redo(): Void {
      var args = new ArrayList();
      native.call('redo', args);
  }
  public function removeCaret(caret: Int): Void {
      var args = new ArrayList();
      args.append(caret);
      native.call('remove_caret', args);
  }
  public function removeGutter(gutter: Int): Void {
      var args = new ArrayList();
      args.append(gutter);
      native.call('remove_gutter', args);
  }
  public function removeLineAt(line: Int, ?moveCaretsDown: Bool): Void {
      var args = new ArrayList();
      args.append(line);
      if (moveCaretsDown != null) {
          args.append(moveCaretsDown);
      }
      native.call('remove_line_at', args);
  }
  public function removeSecondaryCarets(): Void {
      var args = new ArrayList();
      native.call('remove_secondary_carets', args);
  }
  public function removeText(fromLine: Int, fromColumn: Int, toLine: Int, toColumn: Int): Void {
      var args = new ArrayList();
      args.append(fromLine);
      args.append(fromColumn);
      args.append(toLine);
      args.append(toColumn);
      native.call('remove_text', args);
  }
  public function search(text: String, flags: Int, fromLine: Int, fromColumn: Int): Vector2i {
      var args = new ArrayList();
      args.append(text);
      args.append(flags);
      args.append(fromLine);
      args.append(fromColumn);
      return native.call('search', args);
  }
  public function select(originLine: Int, originColumn: Int, caretLine: Int, caretColumn: Int, ?caretIndex: Int): Void {
      var args = new ArrayList();
      args.append(originLine);
      args.append(originColumn);
      args.append(caretLine);
      args.append(caretColumn);
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('select', args);
  }
  public function selectAll(): Void {
      var args = new ArrayList();
      native.call('select_all', args);
  }
  public function selectWordUnderCaret(?caretIndex: Int): Void {
      var args = new ArrayList();
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('select_word_under_caret', args);
  }
  public function setCaretColumn(column: Int, ?adjustViewport: Bool, ?caretIndex: Int): Void {
      var args = new ArrayList();
      args.append(column);
      if (adjustViewport != null) {
          args.append(adjustViewport);
      }
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('set_caret_column', args);
  }
  public function setCaretLine(line: Int, ?adjustViewport: Bool, ?canBeHidden: Bool, ?wrapIndex: Int, ?caretIndex: Int): Void {
      var args = new ArrayList();
      args.append(line);
      if (adjustViewport != null) {
          args.append(adjustViewport);
      }
      if (canBeHidden != null) {
          args.append(canBeHidden);
      }
      if (wrapIndex != null) {
          args.append(wrapIndex);
      }
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('set_caret_line', args);
  }
  public function setGutterClickable(gutter: Int, clickable: Bool): Void {
      var args = new ArrayList();
      args.append(gutter);
      args.append(clickable);
      native.call('set_gutter_clickable', args);
  }
  public function setGutterCustomDraw(column: Int, drawCallback: Variant): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(drawCallback);
      native.call('set_gutter_custom_draw', args);
  }
  public function setGutterDraw(gutter: Int, draw: Bool): Void {
      var args = new ArrayList();
      args.append(gutter);
      args.append(draw);
      native.call('set_gutter_draw', args);
  }
  public function setGutterName(gutter: Int, name: String): Void {
      var args = new ArrayList();
      args.append(gutter);
      args.append(name);
      native.call('set_gutter_name', args);
  }
  public function setGutterOverwritable(gutter: Int, overwritable: Bool): Void {
      var args = new ArrayList();
      args.append(gutter);
      args.append(overwritable);
      native.call('set_gutter_overwritable', args);
  }
  public function setGutterType(gutter: Int, type: Int): Void {
      var args = new ArrayList();
      args.append(gutter);
      args.append(type);
      native.call('set_gutter_type', args);
  }
  public function setGutterWidth(gutter: Int, width: Int): Void {
      var args = new ArrayList();
      args.append(gutter);
      args.append(width);
      native.call('set_gutter_width', args);
  }
  public function setLine(line: Int, newText: String): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(newText);
      native.call('set_line', args);
  }
  public function setLineAsCenterVisible(line: Int, ?wrapIndex: Int): Void {
      var args = new ArrayList();
      args.append(line);
      if (wrapIndex != null) {
          args.append(wrapIndex);
      }
      native.call('set_line_as_center_visible', args);
  }
  public function setLineAsFirstVisible(line: Int, ?wrapIndex: Int): Void {
      var args = new ArrayList();
      args.append(line);
      if (wrapIndex != null) {
          args.append(wrapIndex);
      }
      native.call('set_line_as_first_visible', args);
  }
  public function setLineAsLastVisible(line: Int, ?wrapIndex: Int): Void {
      var args = new ArrayList();
      args.append(line);
      if (wrapIndex != null) {
          args.append(wrapIndex);
      }
      native.call('set_line_as_last_visible', args);
  }
  public function setLineBackgroundColor(line: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(color);
      native.call('set_line_background_color', args);
  }
  public function setLineGutterClickable(line: Int, gutter: Int, clickable: Bool): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(gutter);
      args.append(clickable);
      native.call('set_line_gutter_clickable', args);
  }
  public function setLineGutterIcon(line: Int, gutter: Int, icon: Texture2D): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(gutter);
      args.append(icon.native);
      native.call('set_line_gutter_icon', args);
  }
  public function setLineGutterItemColor(line: Int, gutter: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(gutter);
      args.append(color);
      native.call('set_line_gutter_item_color', args);
  }
  public function setLineGutterMetadata(line: Int, gutter: Int, metadata: Variant): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(gutter);
      args.append(metadata);
      native.call('set_line_gutter_metadata', args);
  }
  public function setLineGutterText(line: Int, gutter: Int, text: String): Void {
      var args = new ArrayList();
      args.append(line);
      args.append(gutter);
      args.append(text);
      native.call('set_line_gutter_text', args);
  }
  public function setOvertypeModeEnabled(enabled: Bool): Void {
      var args = new ArrayList();
      args.append(enabled);
      native.call('set_overtype_mode_enabled', args);
  }
  public function setSearchFlags(flags: Int): Void {
      var args = new ArrayList();
      args.append(flags);
      native.call('set_search_flags', args);
  }
  public function setSearchText(searchText: String): Void {
      var args = new ArrayList();
      args.append(searchText);
      native.call('set_search_text', args);
  }
  public function setSelectionMode(mode: Int): Void {
      var args = new ArrayList();
      args.append(mode);
      native.call('set_selection_mode', args);
  }
  public function setSelectionOriginColumn(column: Int, ?caretIndex: Int): Void {
      var args = new ArrayList();
      args.append(column);
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('set_selection_origin_column', args);
  }
  public function setSelectionOriginLine(line: Int, ?canBeHidden: Bool, ?wrapIndex: Int, ?caretIndex: Int): Void {
      var args = new ArrayList();
      args.append(line);
      if (canBeHidden != null) {
          args.append(canBeHidden);
      }
      if (wrapIndex != null) {
          args.append(wrapIndex);
      }
      if (caretIndex != null) {
          args.append(caretIndex);
      }
      native.call('set_selection_origin_line', args);
  }
  public function setTabSize(size: Int): Void {
      var args = new ArrayList();
      args.append(size);
      native.call('set_tab_size', args);
  }
  public function setTooltipRequestFunc(callback: Variant): Void {
      var args = new ArrayList();
      args.append(callback);
      native.call('set_tooltip_request_func', args);
  }
  public function skipSelectionForNextOccurrence(): Void {
      var args = new ArrayList();
      native.call('skip_selection_for_next_occurrence', args);
  }
  public function startAction(action: Int): Void {
      var args = new ArrayList();
      args.append(action);
      native.call('start_action', args);
  }
  public function swapLines(fromLine: Int, toLine: Int): Void {
      var args = new ArrayList();
      args.append(fromLine);
      args.append(toLine);
      native.call('swap_lines', args);
  }
  public function tagSavedVersion(): Void {
      var args = new ArrayList();
      native.call('tag_saved_version', args);
  }
  public function undo(): Void {
      var args = new ArrayList();
      native.call('undo', args);
  }
}
