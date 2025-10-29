package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Texture2D;
import sunaba.core.Signal;
import sunaba.desktop.PopupMenu;

class LineEdit extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('LineEdit');
        }
        native = _native;
    }

    public var alignment(get, set): Int;
    function get_alignment(): Int {
        return native.get('alignment');
    }
    function set_alignment(value: Int): Int {
      native.set('alignment', value);
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
    public var caretColumn(get, set): Int;
    function get_caretColumn(): Int {
        return native.get('caret_column');
    }
    function set_caretColumn(value: Int): Int {
      native.set('caret_column', value);
        return value;
    }
    public var caretForceDisplayed(get, set): Bool;
    function get_caretForceDisplayed(): Bool {
        return native.get('caret_force_displayed');
    }
    function set_caretForceDisplayed(value: Bool): Bool {
      native.set('caret_force_displayed', value);
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
    public var clearButtonEnabled(get, set): Bool;
    function get_clearButtonEnabled(): Bool {
        return native.get('clear_button_enabled');
    }
    function set_clearButtonEnabled(value: Bool): Bool {
      native.set('clear_button_enabled', value);
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
    public var expandToTextLength(get, set): Bool;
    function get_expandToTextLength(): Bool {
        return native.get('expand_to_text_length');
    }
    function set_expandToTextLength(value: Bool): Bool {
      native.set('expand_to_text_length', value);
        return value;
    }
    public var flat(get, set): Bool;
    function get_flat(): Bool {
        return native.get('flat');
    }
    function set_flat(value: Bool): Bool {
      native.set('flat', value);
        return value;
    }
    public var keepEditingOnTextSubmit(get, set): Bool;
    function get_keepEditingOnTextSubmit(): Bool {
        return native.get('keep_editing_on_text_submit');
    }
    function set_keepEditingOnTextSubmit(value: Bool): Bool {
      native.set('keep_editing_on_text_submit', value);
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
    public var maxLength(get, set): Int;
    function get_maxLength(): Int {
        return native.get('max_length');
    }
    function set_maxLength(value: Int): Int {
      native.set('max_length', value);
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
    public var placeholderText(get, set): String;
    function get_placeholderText(): String {
        return native.get('placeholder_text');
    }
    function set_placeholderText(value: String): String {
      native.set('placeholder_text', value);
        return value;
    }
    public var rightIcon(get, set): Texture2D;
    function get_rightIcon(): Texture2D {
        var ref: NativeReference = native.get('right_icon');
        return new Texture2D(ref);
    }
    function set_rightIcon(value: Texture2D): Texture2D {
      native.set('right_icon', value.native);
        return value;
    }
    public var secret(get, set): Bool;
    function get_secret(): Bool {
        return native.get('secret');
    }
    function set_secret(value: Bool): Bool {
      native.set('secret', value);
        return value;
    }
    public var secretCharacter(get, set): String;
    function get_secretCharacter(): String {
        return native.get('secret_character');
    }
    function set_secretCharacter(value: String): String {
      native.set('secret_character', value);
        return value;
    }
    public var selectAllOnFocus(get, set): Bool;
    function get_selectAllOnFocus(): Bool {
        return native.get('select_all_on_focus');
    }
    function set_selectAllOnFocus(value: Bool): Bool {
      native.set('select_all_on_focus', value);
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
    public var virtualKeyboardType(get, set): Int;
    function get_virtualKeyboardType(): Int {
        return native.get('virtual_keyboard_type');
    }
    function set_virtualKeyboardType(value: Int): Int {
      native.set('virtual_keyboard_type', value);
        return value;
    }

	private var _editingToggled: Signal;
	public var editingToggled(get, default): Signal;
	function get_editingToggled(): Signal {
	    if (_editingToggled == null) {
	        _editingToggled = Signal.createFromObject(native, 'editing_toggled');
	    }
	    return _editingToggled;
	}
	private var _textChangeRejected: Signal;
	public var textChangeRejected(get, default): Signal;
	function get_textChangeRejected(): Signal {
	    if (_textChangeRejected == null) {
	        _textChangeRejected = Signal.createFromObject(native, 'text_change_rejected');
	    }
	    return _textChangeRejected;
	}
	private var _textChanged: Signal;
	public var textChanged(get, default): Signal;
	function get_textChanged(): Signal {
	    if (_textChanged == null) {
	        _textChanged = Signal.createFromObject(native, 'text_changed');
	    }
	    return _textChanged;
	}
	private var _textSubmitted: Signal;
	public var textSubmitted(get, default): Signal;
	function get_textSubmitted(): Signal {
	    if (_textSubmitted == null) {
	        _textSubmitted = Signal.createFromObject(native, 'text_submitted');
	    }
	    return _textSubmitted;
	}

  public function applyIme(): Void {
      var args = new ArrayList();
      native.call('apply_ime', args);
  }
  public function cancelIme(): Void {
      var args = new ArrayList();
      native.call('cancel_ime', args);
  }
  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function deleteCharAtCaret(): Void {
      var args = new ArrayList();
      native.call('delete_char_at_caret', args);
  }
  public function deleteText(fromColumn: Int, toColumn: Int): Void {
      var args = new ArrayList();
      args.append(fromColumn);
      args.append(toColumn);
      native.call('delete_text', args);
  }
  public function deselect(): Void {
      var args = new ArrayList();
      native.call('deselect', args);
  }
  public function edit(): Void {
      var args = new ArrayList();
      native.call('edit', args);
  }
  public function getMenu(): PopupMenu {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_menu', args);
      return new PopupMenu(ref);
  }
  public function getNextCompositeCharacterColumn(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_next_composite_character_column', args);
  }
  public function getPreviousCompositeCharacterColumn(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_previous_composite_character_column', args);
  }
  public function getScrollOffset(): Float {
      var args = new ArrayList();
      return native.call('get_scroll_offset', args);
  }
  public function getSelectedText(): String {
      var args = new ArrayList();
      return native.call('get_selected_text', args);
  }
  public function getSelectionFromColumn(): Int {
      var args = new ArrayList();
      return native.call('get_selection_from_column', args);
  }
  public function getSelectionToColumn(): Int {
      var args = new ArrayList();
      return native.call('get_selection_to_column', args);
  }
  public function hasImeText(): Bool {
      var args = new ArrayList();
      return native.call('has_ime_text', args);
  }
  public function hasRedo(): Bool {
      var args = new ArrayList();
      return native.call('has_redo', args);
  }
  public function hasSelection(): Bool {
      var args = new ArrayList();
      return native.call('has_selection', args);
  }
  public function hasUndo(): Bool {
      var args = new ArrayList();
      return native.call('has_undo', args);
  }
  public function insertTextAtCaret(text: String): Void {
      var args = new ArrayList();
      args.append(text);
      native.call('insert_text_at_caret', args);
  }
  public function isEditing(): Bool {
      var args = new ArrayList();
      return native.call('is_editing', args);
  }
  public function isMenuVisible(): Bool {
      var args = new ArrayList();
      return native.call('is_menu_visible', args);
  }
  public function menuOption(option: Int): Void {
      var args = new ArrayList();
      args.append(option);
      native.call('menu_option', args);
  }
  public function select(?from: Int, ?to: Int): Void {
      var args = new ArrayList();
      if (from != null) {
          args.append(from);
      }
      if (to != null) {
          args.append(to);
      }
      native.call('select', args);
  }
  public function selectAll(): Void {
      var args = new ArrayList();
      native.call('select_all', args);
  }
  public function unedit(): Void {
      var args = new ArrayList();
      native.call('unedit', args);
  }
}
