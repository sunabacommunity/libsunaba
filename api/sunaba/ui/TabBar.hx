package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.Texture2D;
import sunaba.core.Vector2;
import sunaba.core.Rect2;

class TabBar extends Control {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('TabBar');
        }
        this.native = _native;
    }

    public var clipTabs(get, set): Bool;
    function get_clipTabs(): Bool {
        return native.get('clip_tabs');
    }
    function set_clipTabs(value: Bool): Bool {
      native.set('clip_tabs', value);
        return value;
    }
    public var closeWithMiddleMouse(get, set): Bool;
    function get_closeWithMiddleMouse(): Bool {
        return native.get('close_with_middle_mouse');
    }
    function set_closeWithMiddleMouse(value: Bool): Bool {
      native.set('close_with_middle_mouse', value);
        return value;
    }
    public var currentTab(get, set): Int;
    function get_currentTab(): Int {
        return native.get('current_tab');
    }
    function set_currentTab(value: Int): Int {
      native.set('current_tab', value);
        return value;
    }
    public var deselectEnabled(get, set): Bool;
    function get_deselectEnabled(): Bool {
        return native.get('deselect_enabled');
    }
    function set_deselectEnabled(value: Bool): Bool {
      native.set('deselect_enabled', value);
        return value;
    }
    public var dragToRearrangeEnabled(get, set): Bool;
    function get_dragToRearrangeEnabled(): Bool {
        return native.get('drag_to_rearrange_enabled');
    }
    function set_dragToRearrangeEnabled(value: Bool): Bool {
      native.set('drag_to_rearrange_enabled', value);
        return value;
    }
    public var maxTabWidth(get, set): Int;
    function get_maxTabWidth(): Int {
        return native.get('max_tab_width');
    }
    function set_maxTabWidth(value: Int): Int {
      native.set('max_tab_width', value);
        return value;
    }
    public var scrollToSelected(get, set): Bool;
    function get_scrollToSelected(): Bool {
        return native.get('scroll_to_selected');
    }
    function set_scrollToSelected(value: Bool): Bool {
      native.set('scroll_to_selected', value);
        return value;
    }
    public var scrollingEnabled(get, set): Bool;
    function get_scrollingEnabled(): Bool {
        return native.get('scrolling_enabled');
    }
    function set_scrollingEnabled(value: Bool): Bool {
      native.set('scrolling_enabled', value);
        return value;
    }
    public var selectWithRmb(get, set): Bool;
    function get_selectWithRmb(): Bool {
        return native.get('select_with_rmb');
    }
    function set_selectWithRmb(value: Bool): Bool {
      native.set('select_with_rmb', value);
        return value;
    }
    public var tabAlignment(get, set): Int;
    function get_tabAlignment(): Int {
        return native.get('tab_alignment');
    }
    function set_tabAlignment(value: Int): Int {
      native.set('tab_alignment', value);
        return value;
    }
    public var tabCloseDisplayPolicy(get, set): Int;
    function get_tabCloseDisplayPolicy(): Int {
        return native.get('tab_close_display_policy');
    }
    function set_tabCloseDisplayPolicy(value: Int): Int {
      native.set('tab_close_display_policy', value);
        return value;
    }
    public var tabCount(get, set): Int;
    function get_tabCount(): Int {
        return native.get('tab_count');
    }
    function set_tabCount(value: Int): Int {
      native.set('tab_count', value);
        return value;
    }
    public var tabsRearrangeGroup(get, set): Int;
    function get_tabsRearrangeGroup(): Int {
        return native.get('tabs_rearrange_group');
    }
    function set_tabsRearrangeGroup(value: Int): Int {
      native.set('tabs_rearrange_group', value);
        return value;
    }

	private var _activeTabRearranged: Signal;
	public var activeTabRearranged(get, default): Signal;
	function get_activeTabRearranged(): Signal {
	    if (_activeTabRearranged == null) {
	        _activeTabRearranged = Signal.createFromObject(native, 'active_tab_rearranged');
	    }
	    return _activeTabRearranged;
	}
	private var _tabButtonPressed: Signal;
	public var tabButtonPressed(get, default): Signal;
	function get_tabButtonPressed(): Signal {
	    if (_tabButtonPressed == null) {
	        _tabButtonPressed = Signal.createFromObject(native, 'tab_button_pressed');
	    }
	    return _tabButtonPressed;
	}
	private var _tabChanged: Signal;
	public var tabChanged(get, default): Signal;
	function get_tabChanged(): Signal {
	    if (_tabChanged == null) {
	        _tabChanged = Signal.createFromObject(native, 'tab_changed');
	    }
	    return _tabChanged;
	}
	private var _tabClicked: Signal;
	public var tabClicked(get, default): Signal;
	function get_tabClicked(): Signal {
	    if (_tabClicked == null) {
	        _tabClicked = Signal.createFromObject(native, 'tab_clicked');
	    }
	    return _tabClicked;
	}
	private var _tabClosePressed: Signal;
	public var tabClosePressed(get, default): Signal;
	function get_tabClosePressed(): Signal {
	    if (_tabClosePressed == null) {
	        _tabClosePressed = Signal.createFromObject(native, 'tab_close_pressed');
	    }
	    return _tabClosePressed;
	}
	private var _tabHovered: Signal;
	public var tabHovered(get, default): Signal;
	function get_tabHovered(): Signal {
	    if (_tabHovered == null) {
	        _tabHovered = Signal.createFromObject(native, 'tab_hovered');
	    }
	    return _tabHovered;
	}
	private var _tabRmbClicked: Signal;
	public var tabRmbClicked(get, default): Signal;
	function get_tabRmbClicked(): Signal {
	    if (_tabRmbClicked == null) {
	        _tabRmbClicked = Signal.createFromObject(native, 'tab_rmb_clicked');
	    }
	    return _tabRmbClicked;
	}
	private var _tabSelected: Signal;
	public var tabSelected(get, default): Signal;
	function get_tabSelected(): Signal {
	    if (_tabSelected == null) {
	        _tabSelected = Signal.createFromObject(native, 'tab_selected');
	    }
	    return _tabSelected;
	}

  public function addTab(?title: String, ?icon: Texture2D): Void {
      var args = new ArrayList();
      if (title != null) {
          args.append(title);
      }
      if (icon != null) {
          args.append(icon.native);
      }
      native.call('add_tab', args);
  }
  public function clearTabs(): Void {
      var args = new ArrayList();
      native.call('clear_tabs', args);
  }
  public function ensureTabVisible(idx: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      native.call('ensure_tab_visible', args);
  }
  public function getOffsetButtonsVisible(): Bool {
      var args = new ArrayList();
      return native.call('get_offset_buttons_visible', args);
  }
  public function getPreviousTab(): Int {
      var args = new ArrayList();
      return native.call('get_previous_tab', args);
  }
  public function getTabButtonIcon(tabIdx: Int): Texture2D {
      var args = new ArrayList();
      args.append(tabIdx);
      var ref: NativeReference = native.call('get_tab_button_icon', args);
      return new Texture2D(ref);
  }
  public function getTabIcon(tabIdx: Int): Texture2D {
      var args = new ArrayList();
      args.append(tabIdx);
      var ref: NativeReference = native.call('get_tab_icon', args);
      return new Texture2D(ref);
  }
  public function getTabIconMaxWidth(tabIdx: Int): Int {
      var args = new ArrayList();
      args.append(tabIdx);
      return native.call('get_tab_icon_max_width', args);
  }
  public function getTabIdxAtPoint(point: Vector2): Int {
      var args = new ArrayList();
      args.append(point);
      return native.call('get_tab_idx_at_point', args);
  }
  public function getTabLanguage(tabIdx: Int): String {
      var args = new ArrayList();
      args.append(tabIdx);
      return native.call('get_tab_language', args);
  }
  public function getTabMetadata(tabIdx: Int): Variant {
      var args = new ArrayList();
      args.append(tabIdx);
      return native.call('get_tab_metadata', args);
  }
  public function getTabOffset(): Int {
      var args = new ArrayList();
      return native.call('get_tab_offset', args);
  }
  public function getTabRect(tabIdx: Int): Rect2 {
      var args = new ArrayList();
      args.append(tabIdx);
      return native.call('get_tab_rect', args);
  }
  public function getTabTextDirection(tabIdx: Int): Int {
      var args = new ArrayList();
      args.append(tabIdx);
      return native.call('get_tab_text_direction', args);
  }
  public function getTabTitle(tabIdx: Int): String {
      var args = new ArrayList();
      args.append(tabIdx);
      return native.call('get_tab_title', args);
  }
  public function getTabTooltip(tabIdx: Int): String {
      var args = new ArrayList();
      args.append(tabIdx);
      return native.call('get_tab_tooltip', args);
  }
  public function isTabDisabled(tabIdx: Int): Bool {
      var args = new ArrayList();
      args.append(tabIdx);
      return native.call('is_tab_disabled', args);
  }
  public function isTabHidden(tabIdx: Int): Bool {
      var args = new ArrayList();
      args.append(tabIdx);
      return native.call('is_tab_hidden', args);
  }
  public function moveTab(from: Int, to: Int): Void {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      native.call('move_tab', args);
  }
  public function removeTab(tabIdx: Int): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      native.call('remove_tab', args);
  }
  public function selectNextAvailable(): Bool {
      var args = new ArrayList();
      return native.call('select_next_available', args);
  }
  public function selectPreviousAvailable(): Bool {
      var args = new ArrayList();
      return native.call('select_previous_available', args);
  }
  public function setTabButtonIcon(tabIdx: Int, icon: Texture2D): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(icon.native);
      native.call('set_tab_button_icon', args);
  }
  public function setTabDisabled(tabIdx: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(disabled);
      native.call('set_tab_disabled', args);
  }
  public function setTabHidden(tabIdx: Int, hidden: Bool): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(hidden);
      native.call('set_tab_hidden', args);
  }
  public function setTabIcon(tabIdx: Int, icon: Texture2D): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(icon.native);
      native.call('set_tab_icon', args);
  }
  public function setTabIconMaxWidth(tabIdx: Int, width: Int): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(width);
      native.call('set_tab_icon_max_width', args);
  }
  public function setTabLanguage(tabIdx: Int, language: String): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(language);
      native.call('set_tab_language', args);
  }
  public function setTabMetadata(tabIdx: Int, metadata: Variant): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(metadata);
      native.call('set_tab_metadata', args);
  }
  public function setTabTextDirection(tabIdx: Int, direction: Int): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(direction);
      native.call('set_tab_text_direction', args);
  }
  public function setTabTitle(tabIdx: Int, title: String): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(title);
      native.call('set_tab_title', args);
  }
  public function setTabTooltip(tabIdx: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(tooltip);
      native.call('set_tab_tooltip', args);
  }
}
