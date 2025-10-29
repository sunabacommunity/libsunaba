package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.Vector2;
import sunaba.core.Rect2;

class Tree extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('Tree');
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
    public var autoTooltip(get, set): Bool;
    function get_autoTooltip(): Bool {
        return native.get('auto_tooltip');
    }
    function set_autoTooltip(value: Bool): Bool {
      native.set('auto_tooltip', value);
        return value;
    }
    public var columnTitlesVisible(get, set): Bool;
    function get_columnTitlesVisible(): Bool {
        return native.get('column_titles_visible');
    }
    function set_columnTitlesVisible(value: Bool): Bool {
      native.set('column_titles_visible', value);
        return value;
    }
    public var columns(get, set): Int;
    function get_columns(): Int {
        return native.get('columns');
    }
    function set_columns(value: Int): Int {
      native.set('columns', value);
        return value;
    }
    public var dropModeFlags(get, set): Int;
    function get_dropModeFlags(): Int {
        return native.get('drop_mode_flags');
    }
    function set_dropModeFlags(value: Int): Int {
      native.set('drop_mode_flags', value);
        return value;
    }
    public var enableRecursiveFolding(get, set): Bool;
    function get_enableRecursiveFolding(): Bool {
        return native.get('enable_recursive_folding');
    }
    function set_enableRecursiveFolding(value: Bool): Bool {
      native.set('enable_recursive_folding', value);
        return value;
    }
    public var hideFolding(get, set): Bool;
    function get_hideFolding(): Bool {
        return native.get('hide_folding');
    }
    function set_hideFolding(value: Bool): Bool {
      native.set('hide_folding', value);
        return value;
    }
    public var hideRoot(get, set): Bool;
    function get_hideRoot(): Bool {
        return native.get('hide_root');
    }
    function set_hideRoot(value: Bool): Bool {
      native.set('hide_root', value);
        return value;
    }
    public var scrollHorizontalEnabled(get, set): Bool;
    function get_scrollHorizontalEnabled(): Bool {
        return native.get('scroll_horizontal_enabled');
    }
    function set_scrollHorizontalEnabled(value: Bool): Bool {
      native.set('scroll_horizontal_enabled', value);
        return value;
    }
    public var scrollVerticalEnabled(get, set): Bool;
    function get_scrollVerticalEnabled(): Bool {
        return native.get('scroll_vertical_enabled');
    }
    function set_scrollVerticalEnabled(value: Bool): Bool {
      native.set('scroll_vertical_enabled', value);
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

	private var _buttonClicked: Signal;
	public var buttonClicked(get, default): Signal;
	function get_buttonClicked(): Signal {
	    if (_buttonClicked == null) {
	        _buttonClicked = Signal.createFromObject(native, 'button_clicked');
	    }
	    return _buttonClicked;
	}
	private var _cellSelected: Signal;
	public var cellSelected(get, default): Signal;
	function get_cellSelected(): Signal {
	    if (_cellSelected == null) {
	        _cellSelected = Signal.createFromObject(native, 'cell_selected');
	    }
	    return _cellSelected;
	}
	private var _checkPropagatedToItem: Signal;
	public var checkPropagatedToItem(get, default): Signal;
	function get_checkPropagatedToItem(): Signal {
	    if (_checkPropagatedToItem == null) {
	        _checkPropagatedToItem = Signal.createFromObject(native, 'check_propagated_to_item');
	    }
	    return _checkPropagatedToItem;
	}
	private var _columnTitleClicked: Signal;
	public var columnTitleClicked(get, default): Signal;
	function get_columnTitleClicked(): Signal {
	    if (_columnTitleClicked == null) {
	        _columnTitleClicked = Signal.createFromObject(native, 'column_title_clicked');
	    }
	    return _columnTitleClicked;
	}
	private var _customItemClicked: Signal;
	public var customItemClicked(get, default): Signal;
	function get_customItemClicked(): Signal {
	    if (_customItemClicked == null) {
	        _customItemClicked = Signal.createFromObject(native, 'custom_item_clicked');
	    }
	    return _customItemClicked;
	}
	private var _customPopupEdited: Signal;
	public var customPopupEdited(get, default): Signal;
	function get_customPopupEdited(): Signal {
	    if (_customPopupEdited == null) {
	        _customPopupEdited = Signal.createFromObject(native, 'custom_popup_edited');
	    }
	    return _customPopupEdited;
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
	private var _itemCollapsed: Signal;
	public var itemCollapsed(get, default): Signal;
	function get_itemCollapsed(): Signal {
	    if (_itemCollapsed == null) {
	        _itemCollapsed = Signal.createFromObject(native, 'item_collapsed');
	    }
	    return _itemCollapsed;
	}
	private var _itemEdited: Signal;
	public var itemEdited(get, default): Signal;
	function get_itemEdited(): Signal {
	    if (_itemEdited == null) {
	        _itemEdited = Signal.createFromObject(native, 'item_edited');
	    }
	    return _itemEdited;
	}
	private var _itemIconDoubleClicked: Signal;
	public var itemIconDoubleClicked(get, default): Signal;
	function get_itemIconDoubleClicked(): Signal {
	    if (_itemIconDoubleClicked == null) {
	        _itemIconDoubleClicked = Signal.createFromObject(native, 'item_icon_double_clicked');
	    }
	    return _itemIconDoubleClicked;
	}
	private var _itemMouseSelected: Signal;
	public var itemMouseSelected(get, default): Signal;
	function get_itemMouseSelected(): Signal {
	    if (_itemMouseSelected == null) {
	        _itemMouseSelected = Signal.createFromObject(native, 'item_mouse_selected');
	    }
	    return _itemMouseSelected;
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
	private var _nothingSelected: Signal;
	public var nothingSelected(get, default): Signal;
	function get_nothingSelected(): Signal {
	    if (_nothingSelected == null) {
	        _nothingSelected = Signal.createFromObject(native, 'nothing_selected');
	    }
	    return _nothingSelected;
	}

  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function createItem(?parent: TreeItem, ?index: Int): TreeItem {
      var args = new ArrayList();
      if (parent != null) {
          args.append(parent.native);
      }
      if (index != null) {
          args.append(index);
      }
      var ref: NativeObject = native.call('create_item', args);
      return new TreeItem(ref);
  }
  public function deselectAll(): Void {
      var args = new ArrayList();
      native.call('deselect_all', args);
  }
  public function editSelected(?forceEdit: Bool): Bool {
      var args = new ArrayList();
      if (forceEdit != null) {
          args.append(forceEdit);
      }
      return native.call('edit_selected', args);
  }
  public function ensureCursorIsVisible(): Void {
      var args = new ArrayList();
      native.call('ensure_cursor_is_visible', args);
  }
  public function getButtonIdAtPosition(position: Vector2): Int {
      var args = new ArrayList();
      args.append(position);
      return native.call('get_button_id_at_position', args);
  }
  public function getColumnAtPosition(position: Vector2): Int {
      var args = new ArrayList();
      args.append(position);
      return native.call('get_column_at_position', args);
  }
  public function getColumnExpandRatio(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_column_expand_ratio', args);
  }
  public function getColumnTitle(column: Int): String {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_column_title', args);
  }
  public function getColumnTitleAlignment(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_column_title_alignment', args);
  }
  public function getColumnTitleDirection(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_column_title_direction', args);
  }
  public function getColumnTitleLanguage(column: Int): String {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_column_title_language', args);
  }
  public function getColumnWidth(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_column_width', args);
  }
  public function getCustomPopupRect(): Rect2 {
      var args = new ArrayList();
      return native.call('get_custom_popup_rect', args);
  }
  public function getDropSectionAtPosition(position: Vector2): Int {
      var args = new ArrayList();
      args.append(position);
      return native.call('get_drop_section_at_position', args);
  }
  public function getEdited(): TreeItem {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_edited', args);
      return new TreeItem(ref);
  }
  public function getEditedColumn(): Int {
      var args = new ArrayList();
      return native.call('get_edited_column', args);
  }
  public function getItemAreaRect(item: TreeItem, ?column: Int, ?buttonIndex: Int): Rect2 {
      var args = new ArrayList();
      args.append(item.native);
      if (column != null) {
          args.append(column);
      }
      if (buttonIndex != null) {
          args.append(buttonIndex);
      }
      return native.call('get_item_area_rect', args);
  }
  public function getItemAtPosition(position: Vector2): TreeItem {
      var args = new ArrayList();
      args.append(position);
      var ref: NativeObject = native.call('get_item_at_position', args);
      return new TreeItem(ref);
  }
  public function getNextSelected(from: TreeItem): TreeItem {
      var args = new ArrayList();
      args.append(from.native);
      var ref: NativeObject = native.call('get_next_selected', args);
      return new TreeItem(ref);
  }
  public function getPressedButton(): Int {
      var args = new ArrayList();
      return native.call('get_pressed_button', args);
  }
  public function getRoot(): TreeItem {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_root', args);
      return new TreeItem(ref);
  }
  public function getScroll(): Vector2 {
      var args = new ArrayList();
      return native.call('get_scroll', args);
  }
  public function getSelected(): TreeItem {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_selected', args);
      return new TreeItem(ref);
  }
  public function getSelectedColumn(): Int {
      var args = new ArrayList();
      return native.call('get_selected_column', args);
  }
  public function isColumnClippingContent(column: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      return native.call('is_column_clipping_content', args);
  }
  public function isColumnExpanding(column: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      return native.call('is_column_expanding', args);
  }
  public function scrollToItem(item: TreeItem, ?centerOnItem: Bool): Void {
      var args = new ArrayList();
      args.append(item.native);
      if (centerOnItem != null) {
          args.append(centerOnItem);
      }
      native.call('scroll_to_item', args);
  }
  public function setColumnClipContent(column: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(enable);
      native.call('set_column_clip_content', args);
  }
  public function setColumnCustomMinimumWidth(column: Int, minWidth: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(minWidth);
      native.call('set_column_custom_minimum_width', args);
  }
  public function setColumnExpand(column: Int, expand: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(expand);
      native.call('set_column_expand', args);
  }
  public function setColumnExpandRatio(column: Int, ratio: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(ratio);
      native.call('set_column_expand_ratio', args);
  }
  public function setColumnTitle(column: Int, title: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(title);
      native.call('set_column_title', args);
  }
  public function setColumnTitleAlignment(column: Int, titleAlignment: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(titleAlignment);
      native.call('set_column_title_alignment', args);
  }
  public function setColumnTitleDirection(column: Int, direction: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(direction);
      native.call('set_column_title_direction', args);
  }
  public function setColumnTitleLanguage(column: Int, language: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(language);
      native.call('set_column_title_language', args);
  }
  public function setSelected(item: TreeItem, column: Int): Void {
      var args = new ArrayList();
      args.append(item.native);
      args.append(column);
      native.call('set_selected', args);
  }
}
