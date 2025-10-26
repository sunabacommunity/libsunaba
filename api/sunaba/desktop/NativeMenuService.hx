package sunaba.desktop;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.Texture2D;
import sunaba.core.Vector2;
import sunaba.core.Vector2i;

class NativeMenuService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('NativeMenuService');
        }
        return _native;
    }



  public function addCheckItem(rid: Variant, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('add_check_item', args);
  }
  public function addIconCheckItem(rid: Variant, icon: Texture2D, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(icon.native);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('add_icon_check_item', args);
  }
  public function addIconItem(rid: Variant, icon: Texture2D, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(icon.native);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('add_icon_item', args);
  }
  public function addIconRadioCheckItem(rid: Variant, icon: Texture2D, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(icon.native);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('add_icon_radio_check_item', args);
  }
  public function addItem(rid: Variant, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('add_item', args);
  }
  public function addMultistateItem(rid: Variant, label: String, maxStates: Int, defaultState: Int, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(label);
      args.append(maxStates);
      args.append(defaultState);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('add_multistate_item', args);
  }
  public function addRadioCheckItem(rid: Variant, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('add_radio_check_item', args);
  }
  public function addSeparator(rid: Variant, ?index: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      if (index != null) {
          args.append(index);
      }
      return getNative().call('add_separator', args);
  }
  public function addSubmenuItem(rid: Variant, label: String, submenuRid: Variant, ?tag: Variant, ?index: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(label);
      args.append(submenuRid);
      if (tag != null) {
          args.append(tag);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('add_submenu_item', args);
  }
  public function clear(rid: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('clear', args);
  }
  public function createMenu(): Variant {
      var args = new ArrayList();
      return getNative().call('create_menu', args);
  }
  public function findItemIndexWithSubmenu(rid: Variant, submenuRid: Variant): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(submenuRid);
      return getNative().call('find_item_index_with_submenu', args);
  }
  public function findItemIndexWithTag(rid: Variant, tag: Variant): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(tag);
      return getNative().call('find_item_index_with_tag', args);
  }
  public function findItemIndexWithText(rid: Variant, text: String): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(text);
      return getNative().call('find_item_index_with_text', args);
  }
  public function freeMenu(rid: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('free_menu', args);
  }
  public function getItemAccelerator(rid: Variant, idx: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_accelerator', args);
  }
  public function getItemCount(rid: Variant): Int {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('get_item_count', args);
  }
  public function getItemIcon(rid: Variant, idx: Int): Texture2D {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      var ref: NativeReference = getNative().call('get_item_icon', args);
      return new Texture2D(ref);
  }
  public function getItemIndentationLevel(rid: Variant, idx: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_indentation_level', args);
  }
  public function getItemMaxStates(rid: Variant, idx: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_max_states', args);
  }
  public function getItemState(rid: Variant, idx: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_state', args);
  }
  public function getItemSubmenu(rid: Variant, idx: Int): Variant {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_submenu', args);
  }
  public function getItemTag(rid: Variant, idx: Int): Variant {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_tag', args);
  }
  public function getItemText(rid: Variant, idx: Int): String {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_text', args);
  }
  public function getItemTooltip(rid: Variant, idx: Int): String {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_tooltip', args);
  }
  public function getMinimumWidth(rid: Variant): Float {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('get_minimum_width', args);
  }
  public function getSize(rid: Variant): Vector2 {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('get_size', args);
  }
  public function getSystemMenu(menuId: Int): Variant {
      var args = new ArrayList();
      args.append(menuId);
      return getNative().call('get_system_menu', args);
  }
  public function getSystemMenuName(menuId: Int): String {
      var args = new ArrayList();
      args.append(menuId);
      return getNative().call('get_system_menu_name', args);
  }
  public function hasFeature(feature: Int): Bool {
      var args = new ArrayList();
      args.append(feature);
      return getNative().call('has_feature', args);
  }
  public function hasMenu(rid: Variant): Bool {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('has_menu', args);
  }
  public function hasSystemMenu(menuId: Int): Bool {
      var args = new ArrayList();
      args.append(menuId);
      return getNative().call('has_system_menu', args);
  }
  public function isItemCheckable(rid: Variant, idx: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('is_item_checkable', args);
  }
  public function isItemChecked(rid: Variant, idx: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('is_item_checked', args);
  }
  public function isItemDisabled(rid: Variant, idx: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('is_item_disabled', args);
  }
  public function isItemHidden(rid: Variant, idx: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('is_item_hidden', args);
  }
  public function isItemRadioCheckable(rid: Variant, idx: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('is_item_radio_checkable', args);
  }
  public function isOpened(rid: Variant): Bool {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('is_opened', args);
  }
  public function isSystemMenu(rid: Variant): Bool {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('is_system_menu', args);
  }
  public function popup(rid: Variant, position: Vector2i): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(position);
      getNative().call('popup', args);
  }
  public function removeItem(rid: Variant, idx: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      getNative().call('remove_item', args);
  }
  public function setInterfaceDirection(rid: Variant, isRtl: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(isRtl);
      getNative().call('set_interface_direction', args);
  }
  public function setItemAccelerator(rid: Variant, idx: Int, keycode: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(keycode);
      getNative().call('set_item_accelerator', args);
  }
  public function setItemCallback(rid: Variant, idx: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(callback);
      getNative().call('set_item_callback', args);
  }
  public function setItemCheckable(rid: Variant, idx: Int, checkable: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(checkable);
      getNative().call('set_item_checkable', args);
  }
  public function setItemChecked(rid: Variant, idx: Int, checked: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(checked);
      getNative().call('set_item_checked', args);
  }
  public function setItemDisabled(rid: Variant, idx: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(disabled);
      getNative().call('set_item_disabled', args);
  }
  public function setItemHidden(rid: Variant, idx: Int, hidden: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(hidden);
      getNative().call('set_item_hidden', args);
  }
  public function setItemHoverCallbacks(rid: Variant, idx: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(callback);
      getNative().call('set_item_hover_callbacks', args);
  }
  public function setItemIcon(rid: Variant, idx: Int, icon: Texture2D): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(icon.native);
      getNative().call('set_item_icon', args);
  }
  public function setItemIndentationLevel(rid: Variant, idx: Int, level: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(level);
      getNative().call('set_item_indentation_level', args);
  }
  public function setItemKeyCallback(rid: Variant, idx: Int, keyCallback: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(keyCallback);
      getNative().call('set_item_key_callback', args);
  }
  public function setItemMaxStates(rid: Variant, idx: Int, maxStates: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(maxStates);
      getNative().call('set_item_max_states', args);
  }
  public function setItemRadioCheckable(rid: Variant, idx: Int, checkable: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(checkable);
      getNative().call('set_item_radio_checkable', args);
  }
  public function setItemState(rid: Variant, idx: Int, state: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(state);
      getNative().call('set_item_state', args);
  }
  public function setItemSubmenu(rid: Variant, idx: Int, submenuRid: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(submenuRid);
      getNative().call('set_item_submenu', args);
  }
  public function setItemTag(rid: Variant, idx: Int, tag: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(tag);
      getNative().call('set_item_tag', args);
  }
  public function setItemText(rid: Variant, idx: Int, text: String): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(text);
      getNative().call('set_item_text', args);
  }
  public function setItemTooltip(rid: Variant, idx: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(tooltip);
      getNative().call('set_item_tooltip', args);
  }
  public function setMinimumWidth(rid: Variant, width: Float): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(width);
      getNative().call('set_minimum_width', args);
  }
  public function setPopupCloseCallback(rid: Variant, callback: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(callback);
      getNative().call('set_popup_close_callback', args);
  }
  public function setPopupOpenCallback(rid: Variant, callback: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(callback);
      getNative().call('set_popup_open_callback', args);
  }
}
