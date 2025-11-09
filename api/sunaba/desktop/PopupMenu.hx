package sunaba.desktop;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.input.InputEvent;
import sunaba.input.Shortcut;
import sunaba.Texture2D;
import sunaba.core.Color;

class PopupMenu extends Popup {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('PopupMenu');
        }
        this.native = _native;
    }

    public var allowSearch(get, set): Bool;
    function get_allowSearch(): Bool {
        return native.get('allow_search');
    }
    function set_allowSearch(value: Bool): Bool {
      native.set('allow_search', value);
        return value;
    }
    public var hideOnCheckableItemSelection(get, set): Bool;
    function get_hideOnCheckableItemSelection(): Bool {
        return native.get('hide_on_checkable_item_selection');
    }
    function set_hideOnCheckableItemSelection(value: Bool): Bool {
      native.set('hide_on_checkable_item_selection', value);
        return value;
    }
    public var hideOnItemSelection(get, set): Bool;
    function get_hideOnItemSelection(): Bool {
        return native.get('hide_on_item_selection');
    }
    function set_hideOnItemSelection(value: Bool): Bool {
      native.set('hide_on_item_selection', value);
        return value;
    }
    public var hideOnStateItemSelection(get, set): Bool;
    function get_hideOnStateItemSelection(): Bool {
        return native.get('hide_on_state_item_selection');
    }
    function set_hideOnStateItemSelection(value: Bool): Bool {
      native.set('hide_on_state_item_selection', value);
        return value;
    }
    public var itemCount(get, set): Int;
    function get_itemCount(): Int {
        return native.get('item_count');
    }
    function set_itemCount(value: Int): Int {
      native.set('item_count', value);
        return value;
    }
    public var preferNativeMenu(get, set): Bool;
    function get_preferNativeMenu(): Bool {
        return native.get('prefer_native_menu');
    }
    function set_preferNativeMenu(value: Bool): Bool {
      native.set('prefer_native_menu', value);
        return value;
    }
    public var submenuPopupDelay(get, set): Float;
    function get_submenuPopupDelay(): Float {
        return native.get('submenu_popup_delay');
    }
    function set_submenuPopupDelay(value: Float): Float {
      native.set('submenu_popup_delay', value);
        return value;
    }
    public var systemMenuId(get, set): Int;
    function get_systemMenuId(): Int {
        return native.get('system_menu_id');
    }
    function set_systemMenuId(value: Int): Int {
      native.set('system_menu_id', value);
        return value;
    }

	private var _idFocused: Signal;
	public var idFocused(get, default): Signal;
	function get_idFocused(): Signal {
	    if (_idFocused == null) {
	        _idFocused = Signal.createFromObject(native, 'id_focused');
	    }
	    return _idFocused;
	}
	private var _idPressed: Signal;
	public var idPressed(get, default): Signal;
	function get_idPressed(): Signal {
	    if (_idPressed == null) {
	        _idPressed = Signal.createFromObject(native, 'id_pressed');
	    }
	    return _idPressed;
	}
	private var _indexPressed: Signal;
	public var indexPressed(get, default): Signal;
	function get_indexPressed(): Signal {
	    if (_indexPressed == null) {
	        _indexPressed = Signal.createFromObject(native, 'index_pressed');
	    }
	    return _indexPressed;
	}
	private var _menuChanged: Signal;
	public var menuChanged(get, default): Signal;
	function get_menuChanged(): Signal {
	    if (_menuChanged == null) {
	        _menuChanged = Signal.createFromObject(native, 'menu_changed');
	    }
	    return _menuChanged;
	}

  public function activateItemByEvent(event: InputEvent, ?forGlobalOnly: Bool): Bool {
      var args = new ArrayList();
      args.append(event.native);
      if (forGlobalOnly != null) {
          args.append(forGlobalOnly);
      }
      return native.call('activate_item_by_event', args);
  }
  public function addCheckItem(label: String, ?id: Int, ?accel: Int): Void {
      var args = new ArrayList();
      args.append(label);
      if (id != null) {
          args.append(id);
      }
      if (accel != null) {
          args.append(accel);
      }
      native.call('add_check_item', args);
  }
  public function addCheckShortcut(shortcut: Shortcut, ?id: Int, ?global: Bool): Void {
      var args = new ArrayList();
      args.append(shortcut.native);
      if (id != null) {
          args.append(id);
      }
      if (global != null) {
          args.append(global);
      }
      native.call('add_check_shortcut', args);
  }
  public function addIconCheckItem(texture: Texture2D, label: String, ?id: Int, ?accel: Int): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(label);
      if (id != null) {
          args.append(id);
      }
      if (accel != null) {
          args.append(accel);
      }
      native.call('add_icon_check_item', args);
  }
  public function addIconCheckShortcut(texture: Texture2D, shortcut: Shortcut, ?id: Int, ?global: Bool): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(shortcut.native);
      if (id != null) {
          args.append(id);
      }
      if (global != null) {
          args.append(global);
      }
      native.call('add_icon_check_shortcut', args);
  }
  public function addIconItem(texture: Texture2D, label: String, ?id: Int, ?accel: Int): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(label);
      if (id != null) {
          args.append(id);
      }
      if (accel != null) {
          args.append(accel);
      }
      native.call('add_icon_item', args);
  }
  public function addIconRadioCheckItem(texture: Texture2D, label: String, ?id: Int, ?accel: Int): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(label);
      if (id != null) {
          args.append(id);
      }
      if (accel != null) {
          args.append(accel);
      }
      native.call('add_icon_radio_check_item', args);
  }
  public function addIconRadioCheckShortcut(texture: Texture2D, shortcut: Shortcut, ?id: Int, ?global: Bool): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(shortcut.native);
      if (id != null) {
          args.append(id);
      }
      if (global != null) {
          args.append(global);
      }
      native.call('add_icon_radio_check_shortcut', args);
  }
  public function addIconShortcut(texture: Texture2D, shortcut: Shortcut, ?id: Int, ?global: Bool, ?allowEcho: Bool): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(shortcut.native);
      if (id != null) {
          args.append(id);
      }
      if (global != null) {
          args.append(global);
      }
      if (allowEcho != null) {
          args.append(allowEcho);
      }
      native.call('add_icon_shortcut', args);
  }
  public function addItem(label: String, ?id: Int, ?accel: Int): Void {
      var args = new ArrayList();
      args.append(label);
      if (id != null) {
          args.append(id);
      }
      if (accel != null) {
          args.append(accel);
      }
      native.call('add_item', args);
  }
  public function addMultistateItem(label: String, maxStates: Int, ?defaultState: Int, ?id: Int, ?accel: Int): Void {
      var args = new ArrayList();
      args.append(label);
      args.append(maxStates);
      if (defaultState != null) {
          args.append(defaultState);
      }
      if (id != null) {
          args.append(id);
      }
      if (accel != null) {
          args.append(accel);
      }
      native.call('add_multistate_item', args);
  }
  public function addRadioCheckItem(label: String, ?id: Int, ?accel: Int): Void {
      var args = new ArrayList();
      args.append(label);
      if (id != null) {
          args.append(id);
      }
      if (accel != null) {
          args.append(accel);
      }
      native.call('add_radio_check_item', args);
  }
  public function addRadioCheckShortcut(shortcut: Shortcut, ?id: Int, ?global: Bool): Void {
      var args = new ArrayList();
      args.append(shortcut.native);
      if (id != null) {
          args.append(id);
      }
      if (global != null) {
          args.append(global);
      }
      native.call('add_radio_check_shortcut', args);
  }
  public function addSeparator(?label: String, ?id: Int): Void {
      var args = new ArrayList();
      if (label != null) {
          args.append(label);
      }
      if (id != null) {
          args.append(id);
      }
      native.call('add_separator', args);
  }
  public function addShortcut(shortcut: Shortcut, ?id: Int, ?global: Bool, ?allowEcho: Bool): Void {
      var args = new ArrayList();
      args.append(shortcut.native);
      if (id != null) {
          args.append(id);
      }
      if (global != null) {
          args.append(global);
      }
      if (allowEcho != null) {
          args.append(allowEcho);
      }
      native.call('add_shortcut', args);
  }
  public function addSubmenuItem(label: String, submenu: String, ?id: Int): Void {
      var args = new ArrayList();
      args.append(label);
      args.append(submenu);
      if (id != null) {
          args.append(id);
      }
      native.call('add_submenu_item', args);
  }
  public function addSubmenuNodeItem(label: String, submenu: PopupMenu, ?id: Int): Void {
      var args = new ArrayList();
      args.append(label);
      args.append(submenu.native);
      if (id != null) {
          args.append(id);
      }
      native.call('add_submenu_node_item', args);
  }
  public function clear(?freeSubmenus: Bool): Void {
      var args = new ArrayList();
      if (freeSubmenus != null) {
          args.append(freeSubmenus);
      }
      native.call('clear', args);
  }
  public function getFocusedItem(): Int {
      var args = new ArrayList();
      return native.call('get_focused_item', args);
  }
  public function getItemAccelerator(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_accelerator', args);
  }
  public function getItemAutoTranslateMode(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_auto_translate_mode', args);
  }
  public function getItemIcon(index: Int): Texture2D {
      var args = new ArrayList();
      args.append(index);
      var ref: NativeReference = native.call('get_item_icon', args);
      return new Texture2D(ref);
  }
  public function getItemIconMaxWidth(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_icon_max_width', args);
  }
  public function getItemIconModulate(index: Int): Color {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_icon_modulate', args);
  }
  public function getItemId(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_id', args);
  }
  public function getItemIndent(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_indent', args);
  }
  public function getItemIndex(id: Int): Int {
      var args = new ArrayList();
      args.append(id);
      return native.call('get_item_index', args);
  }
  public function getItemLanguage(index: Int): String {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_language', args);
  }
  public function getItemMetadata(index: Int): Variant {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_metadata', args);
  }
  public function getItemMultistate(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_multistate', args);
  }
  public function getItemMultistateMax(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_multistate_max', args);
  }
  public function getItemShortcut(index: Int): Shortcut {
      var args = new ArrayList();
      args.append(index);
      var ref: NativeReference = native.call('get_item_shortcut', args);
      return new Shortcut(ref);
  }
  public function getItemSubmenu(index: Int): String {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_submenu', args);
  }
  public function getItemSubmenuNode(index: Int): PopupMenu {
      var args = new ArrayList();
      args.append(index);
      var ref: NativeObject = native.call('get_item_submenu_node', args);
      return new PopupMenu(ref);
  }
  public function getItemText(index: Int): String {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_text', args);
  }
  public function getItemTextDirection(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_text_direction', args);
  }
  public function getItemTooltip(index: Int): String {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_item_tooltip', args);
  }
  public function isItemCheckable(index: Int): Bool {
      var args = new ArrayList();
      args.append(index);
      return native.call('is_item_checkable', args);
  }
  public function isItemChecked(index: Int): Bool {
      var args = new ArrayList();
      args.append(index);
      return native.call('is_item_checked', args);
  }
  public function isItemDisabled(index: Int): Bool {
      var args = new ArrayList();
      args.append(index);
      return native.call('is_item_disabled', args);
  }
  public function isItemRadioCheckable(index: Int): Bool {
      var args = new ArrayList();
      args.append(index);
      return native.call('is_item_radio_checkable', args);
  }
  public function isItemSeparator(index: Int): Bool {
      var args = new ArrayList();
      args.append(index);
      return native.call('is_item_separator', args);
  }
  public function isItemShortcutDisabled(index: Int): Bool {
      var args = new ArrayList();
      args.append(index);
      return native.call('is_item_shortcut_disabled', args);
  }
  public function isNativeMenu(): Bool {
      var args = new ArrayList();
      return native.call('is_native_menu', args);
  }
  public function isSystemMenu(): Bool {
      var args = new ArrayList();
      return native.call('is_system_menu', args);
  }
  public function removeItem(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      native.call('remove_item', args);
  }
  public function scrollToItem(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      native.call('scroll_to_item', args);
  }
  public function setFocusedItem(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      native.call('set_focused_item', args);
  }
  public function setItemAccelerator(index: Int, accel: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(accel);
      native.call('set_item_accelerator', args);
  }
  public function setItemAsCheckable(index: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(enable);
      native.call('set_item_as_checkable', args);
  }
  public function setItemAsRadioCheckable(index: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(enable);
      native.call('set_item_as_radio_checkable', args);
  }
  public function setItemAsSeparator(index: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(enable);
      native.call('set_item_as_separator', args);
  }
  public function setItemAutoTranslateMode(index: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(mode);
      native.call('set_item_auto_translate_mode', args);
  }
  public function setItemChecked(index: Int, checked: Bool): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(checked);
      native.call('set_item_checked', args);
  }
  public function setItemDisabled(index: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(disabled);
      native.call('set_item_disabled', args);
  }
  public function setItemIcon(index: Int, icon: Texture2D): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(icon.native);
      native.call('set_item_icon', args);
  }
  public function setItemIconMaxWidth(index: Int, width: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(width);
      native.call('set_item_icon_max_width', args);
  }
  public function setItemIconModulate(index: Int, modulate: Color): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(modulate);
      native.call('set_item_icon_modulate', args);
  }
  public function setItemId(index: Int, id: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(id);
      native.call('set_item_id', args);
  }
  public function setItemIndent(index: Int, indent: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(indent);
      native.call('set_item_indent', args);
  }
  public function setItemLanguage(index: Int, language: String): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(language);
      native.call('set_item_language', args);
  }
  public function setItemMetadata(index: Int, metadata: Variant): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(metadata);
      native.call('set_item_metadata', args);
  }
  public function setItemMultistate(index: Int, state: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(state);
      native.call('set_item_multistate', args);
  }
  public function setItemMultistateMax(index: Int, maxStates: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(maxStates);
      native.call('set_item_multistate_max', args);
  }
  public function setItemShortcut(index: Int, shortcut: Shortcut, ?global: Bool): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(shortcut.native);
      if (global != null) {
          args.append(global);
      }
      native.call('set_item_shortcut', args);
  }
  public function setItemShortcutDisabled(index: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(disabled);
      native.call('set_item_shortcut_disabled', args);
  }
  public function setItemSubmenu(index: Int, submenu: String): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(submenu);
      native.call('set_item_submenu', args);
  }
  public function setItemSubmenuNode(index: Int, submenu: PopupMenu): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(submenu.native);
      native.call('set_item_submenu_node', args);
  }
  public function setItemText(index: Int, text: String): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(text);
      native.call('set_item_text', args);
  }
  public function setItemTextDirection(index: Int, direction: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(direction);
      native.call('set_item_text_direction', args);
  }
  public function setItemTooltip(index: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(tooltip);
      native.call('set_item_tooltip', args);
  }
  public function toggleItemChecked(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      native.call('toggle_item_checked', args);
  }
  public function toggleItemMultistate(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      native.call('toggle_item_multistate', args);
  }
}
