package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Texture2D;
import newhaven.core.ArrayList;
import newhaven.desktop.PopupMenu;

class OptionButton extends Button {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('OptionButton');
        }
        native = _native;
    }

    public var allowReselect(get, set): Bool;
    function get_allowReselect(): Bool {
        return native.get('allow_reselect');
    }
    function set_allowReselect(value: Bool): Bool {
      native.set('allow_reselect', value);
        return value;
    }
    public var fitToLongestItem(get, set): Bool;
    function get_fitToLongestItem(): Bool {
        return native.get('fit_to_longest_item');
    }
    function set_fitToLongestItem(value: Bool): Bool {
      native.set('fit_to_longest_item', value);
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
    public var selected(get, set): Int;
    function get_selected(): Int {
        return native.get('selected');
    }
    function set_selected(value: Int): Int {
      native.set('selected', value);
        return value;
    }

  public function addIconItem(texture: Texture2D, label: String, ?id: Int): Void {
      var args = new ArrayList();
      args.append(texture.native);
      args.append(label);
      if (id != null) {
          args.append(id);
      }
      native.call('add_icon_item', args);
  }
  public function addItem(label: String, ?id: Int): Void {
      var args = new ArrayList();
      args.append(label);
      if (id != null) {
          args.append(id);
      }
      native.call('add_item', args);
  }
  public function addSeparator(?text: String): Void {
      var args = new ArrayList();
      if (text != null) {
          args.append(text);
      }
      native.call('add_separator', args);
  }
  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function getItemAutoTranslateMode(idx: Int): Int {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_auto_translate_mode', args);
  }
  public function getItemIcon(idx: Int): Texture2D {
      var args = new ArrayList();
      args.append(idx);
      var ref: NativeReference = native.call('get_item_icon', args);
      return new Texture2D(ref);
  }
  public function getItemId(idx: Int): Int {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_id', args);
  }
  public function getItemIndex(id: Int): Int {
      var args = new ArrayList();
      args.append(id);
      return native.call('get_item_index', args);
  }
  public function getItemMetadata(idx: Int): Variant {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_metadata', args);
  }
  public function getItemText(idx: Int): String {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_text', args);
  }
  public function getItemTooltip(idx: Int): String {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_tooltip', args);
  }
  public function getPopup(): PopupMenu {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_popup', args);
      return new PopupMenu(ref);
  }
  public function getSelectableItem(?fromLast: Bool): Int {
      var args = new ArrayList();
      if (fromLast != null) {
          args.append(fromLast);
      }
      return native.call('get_selectable_item', args);
  }
  public function getSelectedId(): Int {
      var args = new ArrayList();
      return native.call('get_selected_id', args);
  }
  public function getSelectedMetadata(): Variant {
      var args = new ArrayList();
      return native.call('get_selected_metadata', args);
  }
  public function hasSelectableItems(): Bool {
      var args = new ArrayList();
      return native.call('has_selectable_items', args);
  }
  public function isItemDisabled(idx: Int): Bool {
      var args = new ArrayList();
      args.append(idx);
      return native.call('is_item_disabled', args);
  }
  public function isItemSeparator(idx: Int): Bool {
      var args = new ArrayList();
      args.append(idx);
      return native.call('is_item_separator', args);
  }
  public function removeItem(idx: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      native.call('remove_item', args);
  }
  public function select(idx: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      native.call('select', args);
  }
  public function setDisableShortcuts(disabled: Bool): Void {
      var args = new ArrayList();
      args.append(disabled);
      native.call('set_disable_shortcuts', args);
  }
  public function setItemAutoTranslateMode(idx: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(mode);
      native.call('set_item_auto_translate_mode', args);
  }
  public function setItemDisabled(idx: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(disabled);
      native.call('set_item_disabled', args);
  }
  public function setItemIcon(idx: Int, texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(texture.native);
      native.call('set_item_icon', args);
  }
  public function setItemId(idx: Int, id: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(id);
      native.call('set_item_id', args);
  }
  public function setItemMetadata(idx: Int, metadata: Variant): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(metadata);
      native.call('set_item_metadata', args);
  }
  public function setItemText(idx: Int, text: String): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(text);
      native.call('set_item_text', args);
  }
  public function setItemTooltip(idx: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(tooltip);
      native.call('set_item_tooltip', args);
  }
  public function showPopup(): Void {
      var args = new ArrayList();
      native.call('show_popup', args);
  }
}
