package .Users.Shared.libsunaba.xmlgdapi.service.desktop;

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
     private static var _native: NativeObject
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('NativeMenuService');
        }
        return _native;
    }



  public function addCheckItem(rid: Int, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
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
  public function addIconCheckItem(rid: Int, icon: Texture2D, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
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
  public function addIconItem(rid: Int, icon: Texture2D, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
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
  public function addIconRadioCheckItem(rid: Int, icon: Texture2D, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
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
  public function addItem(rid: Int, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
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
  public function addMultistateItem(rid: Int, label: String, maxStates: Int, defaultState: Int, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
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
  public function addRadioCheckItem(rid: Int, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
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
  public function addSeparator(rid: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      if (index != null) {
          args.append(index);
      }
      return getNative().call('add_separator', args);
  }
  public function addSubmenuItem(rid: Int, label: String, submenuRid: Int, ?tag: Variant, ?index: Int): Int {
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
  public function clear(rid: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('clear', args);
  }
  public function createMenu(): Int {
      var args = new ArrayList();
      return getNative().call('create_menu', args);
  }
  public function findItemIndexWithSubmenu(rid: Int, submenuRid: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(submenuRid);
      return getNative().call('find_item_index_with_submenu', args);
  }
  public function findItemIndexWithTag(rid: Int, tag: Variant): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(tag);
      return getNative().call('find_item_index_with_tag', args);
  }
  public function findItemIndexWithText(rid: Int, text: String): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(text);
      return getNative().call('find_item_index_with_text', args);
  }
  public function freeMenu(rid: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('free_menu', args);
  }
  public function getItemAccelerator(rid: Int, idx: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_accelerator', args);
  }
  public function getItemCount(rid: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('get_item_count', args);
  }
  public function getItemIcon(rid: Int, idx: Int): Texture2D {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      var ref: NativeReference = getNative().call('get_item_icon', args);
      return new Texture2D(ref);
  }
  public function getItemIndentationLevel(rid: Int, idx: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_indentation_level', args);
  }
  public function getItemMaxStates(rid: Int, idx: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_max_states', args);
  }
  public function getItemState(rid: Int, idx: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_state', args);
  }
  public function getItemSubmenu(rid: Int, idx: Int): Int {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_submenu', args);
  }
  public function getItemTag(rid: Int, idx: Int): Variant {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_tag', args);
  }
  public function getItemText(rid: Int, idx: Int): String {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_text', args);
  }
  public function getItemTooltip(rid: Int, idx: Int): String {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('get_item_tooltip', args);
  }
  public function getMinimumWidth(rid: Int): Float {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('get_minimum_width', args);
  }
  public function getSize(rid: Int): Vector2 {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('get_size', args);
  }
  public function getSystemMenu(menuId: Int): Int {
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
  public function hasMenu(rid: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('has_menu', args);
  }
  public function hasSystemMenu(menuId: Int): Bool {
      var args = new ArrayList();
      args.append(menuId);
      return getNative().call('has_system_menu', args);
  }
  public function isItemCheckable(rid: Int, idx: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('is_item_checkable', args);
  }
  public function isItemChecked(rid: Int, idx: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('is_item_checked', args);
  }
  public function isItemDisabled(rid: Int, idx: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('is_item_disabled', args);
  }
  public function isItemHidden(rid: Int, idx: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('is_item_hidden', args);
  }
  public function isItemRadioCheckable(rid: Int, idx: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      return getNative().call('is_item_radio_checkable', args);
  }
  public function isOpened(rid: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('is_opened', args);
  }
  public function isSystemMenu(rid: Int): Bool {
      var args = new ArrayList();
      args.append(rid);
      return getNative().call('is_system_menu', args);
  }
  public function popup(rid: Int, position: Vector2i): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(position);
      getNative().call('popup', args);
  }
  public function removeItem(rid: Int, idx: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      getNative().call('remove_item', args);
  }
  public function setInterfaceDirection(rid: Int, isRtl: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(isRtl);
      getNative().call('set_interface_direction', args);
  }
  public function setItemAccelerator(rid: Int, idx: Int, keycode: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(keycode);
      getNative().call('set_item_accelerator', args);
  }
  public function setItemCallback(rid: Int, idx: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(callback);
      getNative().call('set_item_callback', args);
  }
  public function setItemCheckable(rid: Int, idx: Int, checkable: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(checkable);
      getNative().call('set_item_checkable', args);
  }
  public function setItemChecked(rid: Int, idx: Int, checked: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(checked);
      getNative().call('set_item_checked', args);
  }
  public function setItemDisabled(rid: Int, idx: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(disabled);
      getNative().call('set_item_disabled', args);
  }
  public function setItemHidden(rid: Int, idx: Int, hidden: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(hidden);
      getNative().call('set_item_hidden', args);
  }
  public function setItemHoverCallbacks(rid: Int, idx: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(callback);
      getNative().call('set_item_hover_callbacks', args);
  }
  public function setItemIcon(rid: Int, idx: Int, icon: Texture2D): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(icon.native);
      getNative().call('set_item_icon', args);
  }
  public function setItemIndentationLevel(rid: Int, idx: Int, level: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(level);
      getNative().call('set_item_indentation_level', args);
  }
  public function setItemKeyCallback(rid: Int, idx: Int, keyCallback: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(keyCallback);
      getNative().call('set_item_key_callback', args);
  }
  public function setItemMaxStates(rid: Int, idx: Int, maxStates: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(maxStates);
      getNative().call('set_item_max_states', args);
  }
  public function setItemRadioCheckable(rid: Int, idx: Int, checkable: Bool): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(checkable);
      getNative().call('set_item_radio_checkable', args);
  }
  public function setItemState(rid: Int, idx: Int, state: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(state);
      getNative().call('set_item_state', args);
  }
  public function setItemSubmenu(rid: Int, idx: Int, submenuRid: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(submenuRid);
      getNative().call('set_item_submenu', args);
  }
  public function setItemTag(rid: Int, idx: Int, tag: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(tag);
      getNative().call('set_item_tag', args);
  }
  public function setItemText(rid: Int, idx: Int, text: String): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(text);
      getNative().call('set_item_text', args);
  }
  public function setItemTooltip(rid: Int, idx: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(idx);
      args.append(tooltip);
      getNative().call('set_item_tooltip', args);
  }
  public function setMinimumWidth(rid: Int, width: Float): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(width);
      getNative().call('set_minimum_width', args);
  }
  public function setPopupCloseCallback(rid: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(callback);
      getNative().call('set_popup_close_callback', args);
  }
  public function setPopupOpenCallback(rid: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      args.append(callback);
      getNative().call('set_popup_open_callback', args);
  }
}
