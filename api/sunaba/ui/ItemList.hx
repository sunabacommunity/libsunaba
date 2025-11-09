package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector2i;
import sunaba.core.Signal;
import sunaba.Texture2D;
import sunaba.core.Vector2;
import sunaba.core.Color;
import sunaba.core.Rect2;
import sunaba.core.TypedArray;

class ItemList extends Control {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('ItemList');
        }
        this.native = _native;
    }

    public var allowReselect(get, set): Bool;
    function get_allowReselect(): Bool {
        return native.get('allow_reselect');
    }
    function set_allowReselect(value: Bool): Bool {
      native.set('allow_reselect', value);
        return value;
    }
    public var allowRmbSelect(get, set): Bool;
    function get_allowRmbSelect(): Bool {
        return native.get('allow_rmb_select');
    }
    function set_allowRmbSelect(value: Bool): Bool {
      native.set('allow_rmb_select', value);
        return value;
    }
    public var allowSearch(get, set): Bool;
    function get_allowSearch(): Bool {
        return native.get('allow_search');
    }
    function set_allowSearch(value: Bool): Bool {
      native.set('allow_search', value);
        return value;
    }
    public var autoHeight(get, set): Bool;
    function get_autoHeight(): Bool {
        return native.get('auto_height');
    }
    function set_autoHeight(value: Bool): Bool {
      native.set('auto_height', value);
        return value;
    }
    public var autoWidth(get, set): Bool;
    function get_autoWidth(): Bool {
        return native.get('auto_width');
    }
    function set_autoWidth(value: Bool): Bool {
      native.set('auto_width', value);
        return value;
    }
    public var fixedColumnWidth(get, set): Int;
    function get_fixedColumnWidth(): Int {
        return native.get('fixed_column_width');
    }
    function set_fixedColumnWidth(value: Int): Int {
      native.set('fixed_column_width', value);
        return value;
    }
    public var fixedIconSize(get, set): Vector2i;
    function get_fixedIconSize(): Vector2i {
        return native.get('fixed_icon_size');
    }
    function set_fixedIconSize(value: Vector2i): Vector2i {
      native.set('fixed_icon_size', value);
        return value;
    }
    public var iconMode(get, set): Int;
    function get_iconMode(): Int {
        return native.get('icon_mode');
    }
    function set_iconMode(value: Int): Int {
      native.set('icon_mode', value);
        return value;
    }
    public var iconScale(get, set): Float;
    function get_iconScale(): Float {
        return native.get('icon_scale');
    }
    function set_iconScale(value: Float): Float {
      native.set('icon_scale', value);
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
    public var maxColumns(get, set): Int;
    function get_maxColumns(): Int {
        return native.get('max_columns');
    }
    function set_maxColumns(value: Int): Int {
      native.set('max_columns', value);
        return value;
    }
    public var maxTextLines(get, set): Int;
    function get_maxTextLines(): Int {
        return native.get('max_text_lines');
    }
    function set_maxTextLines(value: Int): Int {
      native.set('max_text_lines', value);
        return value;
    }
    public var sameColumnWidth(get, set): Bool;
    function get_sameColumnWidth(): Bool {
        return native.get('same_column_width');
    }
    function set_sameColumnWidth(value: Bool): Bool {
      native.set('same_column_width', value);
        return value;
    }
    public var selectMode(get, set): Int;
    function get_selectMode(): Int {
        return native.get('select_mode');
    }
    function set_selectMode(value: Int): Int {
      native.set('select_mode', value);
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
    public var wraparoundItems(get, set): Bool;
    function get_wraparoundItems(): Bool {
        return native.get('wraparound_items');
    }
    function set_wraparoundItems(value: Bool): Bool {
      native.set('wraparound_items', value);
        return value;
    }

	private var _emptyClicked: Signal;
	public var emptyClicked(get, default): Signal;
	function get_emptyClicked(): Signal {
	    if (_emptyClicked == null) {
	        _emptyClicked = Signal.createFromObject(native, 'empty_clicked');
	    }
	    return _emptyClicked;
	}
	private var _itemActivated: Signal;
	public var itemActivated(get, default): Signal;
	function get_itemActivated(): Signal {
	    if (_itemActivated == null) {
	        _itemActivated = Signal.createFromObject(native, 'item_activated');
	    }
	    return _itemActivated;
	}
	private var _itemClicked: Signal;
	public var itemClicked(get, default): Signal;
	function get_itemClicked(): Signal {
	    if (_itemClicked == null) {
	        _itemClicked = Signal.createFromObject(native, 'item_clicked');
	    }
	    return _itemClicked;
	}
	private var _itemSelected: Signal;
	public var itemSelected(get, default): Signal;
	function get_itemSelected(): Signal {
	    if (_itemSelected == null) {
	        _itemSelected = Signal.createFromObject(native, 'item_selected');
	    }
	    return _itemSelected;
	}
	private var _multiSelected: Signal;
	public var multiSelected(get, default): Signal;
	function get_multiSelected(): Signal {
	    if (_multiSelected == null) {
	        _multiSelected = Signal.createFromObject(native, 'multi_selected');
	    }
	    return _multiSelected;
	}

  public function addIconItem(icon: Texture2D, ?selectable: Bool): Int {
      var args = new ArrayList();
      args.append(icon.native);
      if (selectable != null) {
          args.append(selectable);
      }
      return native.call('add_icon_item', args);
  }
  public function addItem(text: String, ?icon: Texture2D, ?selectable: Bool): Int {
      var args = new ArrayList();
      args.append(text);
      if (icon != null) {
          args.append(icon.native);
      }
      if (selectable != null) {
          args.append(selectable);
      }
      return native.call('add_item', args);
  }
  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function deselect(idx: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      native.call('deselect', args);
  }
  public function deselectAll(): Void {
      var args = new ArrayList();
      native.call('deselect_all', args);
  }
  public function ensureCurrentIsVisible(): Void {
      var args = new ArrayList();
      native.call('ensure_current_is_visible', args);
  }
  public function forceUpdateListSize(): Void {
      var args = new ArrayList();
      native.call('force_update_list_size', args);
  }
  public function getHScrollBar(): HScrollBar {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_h_scroll_bar', args);
      return new HScrollBar(ref);
  }
  public function getItemAtPosition(position: Vector2, ?exact: Bool): Int {
      var args = new ArrayList();
      args.append(position);
      if (exact != null) {
          args.append(exact);
      }
      return native.call('get_item_at_position', args);
  }
  public function getItemAutoTranslateMode(idx: Int): Int {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_auto_translate_mode', args);
  }
  public function getItemCustomBgColor(idx: Int): Color {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_custom_bg_color', args);
  }
  public function getItemCustomFgColor(idx: Int): Color {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_custom_fg_color', args);
  }
  public function getItemIcon(idx: Int): Texture2D {
      var args = new ArrayList();
      args.append(idx);
      var ref: NativeReference = native.call('get_item_icon', args);
      return new Texture2D(ref);
  }
  public function getItemIconModulate(idx: Int): Color {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_icon_modulate', args);
  }
  public function getItemIconRegion(idx: Int): Rect2 {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_icon_region', args);
  }
  public function getItemLanguage(idx: Int): String {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_language', args);
  }
  public function getItemMetadata(idx: Int): Variant {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_metadata', args);
  }
  public function getItemRect(idx: Int, ?expand: Bool): Rect2 {
      var args = new ArrayList();
      args.append(idx);
      if (expand != null) {
          args.append(expand);
      }
      return native.call('get_item_rect', args);
  }
  public function getItemText(idx: Int): String {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_text', args);
  }
  public function getItemTextDirection(idx: Int): Int {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_text_direction', args);
  }
  public function getItemTooltip(idx: Int): String {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_item_tooltip', args);
  }
  public function getSelectedItems(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('get_selected_items', args);
  }
  public function getVScrollBar(): VScrollBar {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_v_scroll_bar', args);
      return new VScrollBar(ref);
  }
  public function isAnythingSelected(): Bool {
      var args = new ArrayList();
      return native.call('is_anything_selected', args);
  }
  public function isItemDisabled(idx: Int): Bool {
      var args = new ArrayList();
      args.append(idx);
      return native.call('is_item_disabled', args);
  }
  public function isItemIconTransposed(idx: Int): Bool {
      var args = new ArrayList();
      args.append(idx);
      return native.call('is_item_icon_transposed', args);
  }
  public function isItemSelectable(idx: Int): Bool {
      var args = new ArrayList();
      args.append(idx);
      return native.call('is_item_selectable', args);
  }
  public function isItemTooltipEnabled(idx: Int): Bool {
      var args = new ArrayList();
      args.append(idx);
      return native.call('is_item_tooltip_enabled', args);
  }
  public function isSelected(idx: Int): Bool {
      var args = new ArrayList();
      args.append(idx);
      return native.call('is_selected', args);
  }
  public function moveItem(fromIdx: Int, toIdx: Int): Void {
      var args = new ArrayList();
      args.append(fromIdx);
      args.append(toIdx);
      native.call('move_item', args);
  }
  public function removeItem(idx: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      native.call('remove_item', args);
  }
  public function select(idx: Int, ?single: Bool): Void {
      var args = new ArrayList();
      args.append(idx);
      if (single != null) {
          args.append(single);
      }
      native.call('select', args);
  }
  public function setItemAutoTranslateMode(idx: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(mode);
      native.call('set_item_auto_translate_mode', args);
  }
  public function setItemCustomBgColor(idx: Int, customBgColor: Color): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(customBgColor);
      native.call('set_item_custom_bg_color', args);
  }
  public function setItemCustomFgColor(idx: Int, customFgColor: Color): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(customFgColor);
      native.call('set_item_custom_fg_color', args);
  }
  public function setItemDisabled(idx: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(disabled);
      native.call('set_item_disabled', args);
  }
  public function setItemIcon(idx: Int, icon: Texture2D): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(icon.native);
      native.call('set_item_icon', args);
  }
  public function setItemIconModulate(idx: Int, modulate: Color): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(modulate);
      native.call('set_item_icon_modulate', args);
  }
  public function setItemIconRegion(idx: Int, rect: Rect2): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(rect);
      native.call('set_item_icon_region', args);
  }
  public function setItemIconTransposed(idx: Int, transposed: Bool): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(transposed);
      native.call('set_item_icon_transposed', args);
  }
  public function setItemLanguage(idx: Int, language: String): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(language);
      native.call('set_item_language', args);
  }
  public function setItemMetadata(idx: Int, metadata: Variant): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(metadata);
      native.call('set_item_metadata', args);
  }
  public function setItemSelectable(idx: Int, selectable: Bool): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(selectable);
      native.call('set_item_selectable', args);
  }
  public function setItemText(idx: Int, text: String): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(text);
      native.call('set_item_text', args);
  }
  public function setItemTextDirection(idx: Int, direction: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(direction);
      native.call('set_item_text_direction', args);
  }
  public function setItemTooltip(idx: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(tooltip);
      native.call('set_item_tooltip', args);
  }
  public function setItemTooltipEnabled(idx: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(enable);
      native.call('set_item_tooltip_enabled', args);
  }
  public function sortItemsByText(): Void {
      var args = new ArrayList();
      native.call('sort_items_by_text', args);
  }
}
