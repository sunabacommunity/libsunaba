package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.desktop.Popup;
import sunaba.Texture2D;
import sunaba.core.Vector2;
import sunaba.Node;

class TabContainer extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('TabContainer');
        }
        native = _native;
    }

    public var allTabsInFront(get, set): Bool;
    function get_allTabsInFront(): Bool {
        return native.get('all_tabs_in_front');
    }
    function set_allTabsInFront(value: Bool): Bool {
      native.set('all_tabs_in_front', value);
        return value;
    }
    public var clipTabs(get, set): Bool;
    function get_clipTabs(): Bool {
        return native.get('clip_tabs');
    }
    function set_clipTabs(value: Bool): Bool {
      native.set('clip_tabs', value);
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
    public var tabAlignment(get, set): Int;
    function get_tabAlignment(): Int {
        return native.get('tab_alignment');
    }
    function set_tabAlignment(value: Int): Int {
      native.set('tab_alignment', value);
        return value;
    }
    public var tabFocusMode(get, set): Int;
    function get_tabFocusMode(): Int {
        return native.get('tab_focus_mode');
    }
    function set_tabFocusMode(value: Int): Int {
      native.set('tab_focus_mode', value);
        return value;
    }
    public var tabsPosition(get, set): Int;
    function get_tabsPosition(): Int {
        return native.get('tabs_position');
    }
    function set_tabsPosition(value: Int): Int {
      native.set('tabs_position', value);
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
    public var tabsVisible(get, set): Bool;
    function get_tabsVisible(): Bool {
        return native.get('tabs_visible');
    }
    function set_tabsVisible(value: Bool): Bool {
      native.set('tabs_visible', value);
        return value;
    }
    public var useHiddenTabsForMinSize(get, set): Bool;
    function get_useHiddenTabsForMinSize(): Bool {
        return native.get('use_hidden_tabs_for_min_size');
    }
    function set_useHiddenTabsForMinSize(value: Bool): Bool {
      native.set('use_hidden_tabs_for_min_size', value);
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
	private var _prePopupPressed: Signal;
	public var prePopupPressed(get, default): Signal;
	function get_prePopupPressed(): Signal {
	    if (_prePopupPressed == null) {
	        _prePopupPressed = Signal.createFromObject(native, 'pre_popup_pressed');
	    }
	    return _prePopupPressed;
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
	private var _tabHovered: Signal;
	public var tabHovered(get, default): Signal;
	function get_tabHovered(): Signal {
	    if (_tabHovered == null) {
	        _tabHovered = Signal.createFromObject(native, 'tab_hovered');
	    }
	    return _tabHovered;
	}
	private var _tabSelected: Signal;
	public var tabSelected(get, default): Signal;
	function get_tabSelected(): Signal {
	    if (_tabSelected == null) {
	        _tabSelected = Signal.createFromObject(native, 'tab_selected');
	    }
	    return _tabSelected;
	}

  public function getCurrentTabControl(): Control {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_current_tab_control', args);
      return new Control(ref);
  }
  public function getPopup(): Popup {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_popup', args);
      return new Popup(ref);
  }
  public function getPreviousTab(): Int {
      var args = new ArrayList();
      return native.call('get_previous_tab', args);
  }
  public function getTabBar(): TabBar {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_tab_bar', args);
      return new TabBar(ref);
  }
  public function getTabButtonIcon(tabIdx: Int): Texture2D {
      var args = new ArrayList();
      args.append(tabIdx);
      var ref: NativeReference = native.call('get_tab_button_icon', args);
      return new Texture2D(ref);
  }
  public function getTabControl(tabIdx: Int): Control {
      var args = new ArrayList();
      args.append(tabIdx);
      var ref: NativeObject = native.call('get_tab_control', args);
      return new Control(ref);
  }
  public function getTabCount(): Int {
      var args = new ArrayList();
      return native.call('get_tab_count', args);
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
  public function getTabIdxFromControl(control: Control): Int {
      var args = new ArrayList();
      args.append(control.native);
      return native.call('get_tab_idx_from_control', args);
  }
  public function getTabMetadata(tabIdx: Int): Variant {
      var args = new ArrayList();
      args.append(tabIdx);
      return native.call('get_tab_metadata', args);
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
  public function selectNextAvailable(): Bool {
      var args = new ArrayList();
      return native.call('select_next_available', args);
  }
  public function selectPreviousAvailable(): Bool {
      var args = new ArrayList();
      return native.call('select_previous_available', args);
  }
  public function setPopup(popup: Node): Void {
      var args = new ArrayList();
      args.append(popup.native);
      native.call('set_popup', args);
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
  public function setTabMetadata(tabIdx: Int, metadata: Variant): Void {
      var args = new ArrayList();
      args.append(tabIdx);
      args.append(metadata);
      native.call('set_tab_metadata', args);
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
