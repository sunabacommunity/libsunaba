package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.CanvasItem;
import sunaba.core.Vector2;
import sunaba.Node;
import sunaba.core.Signal;
import sunaba.core.Color;
import sunaba.Font;
import sunaba.Texture2D;
import sunaba.core.Rect2;

class Control extends CanvasItem {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('Control');
        }
        this.native = _native;
    }

    public var accessibilityControlsNodes(get, set): ArrayList;
    function get_accessibilityControlsNodes(): ArrayList {
        return native.get('accessibility_controls_nodes');
    }
    function set_accessibilityControlsNodes(value: ArrayList): ArrayList {
      native.set('accessibility_controls_nodes', value);
        return value;
    }
    public var accessibilityDescribedByNodes(get, set): ArrayList;
    function get_accessibilityDescribedByNodes(): ArrayList {
        return native.get('accessibility_described_by_nodes');
    }
    function set_accessibilityDescribedByNodes(value: ArrayList): ArrayList {
      native.set('accessibility_described_by_nodes', value);
        return value;
    }
    public var accessibilityDescription(get, set): String;
    function get_accessibilityDescription(): String {
        return native.get('accessibility_description');
    }
    function set_accessibilityDescription(value: String): String {
      native.set('accessibility_description', value);
        return value;
    }
    public var accessibilityFlowToNodes(get, set): ArrayList;
    function get_accessibilityFlowToNodes(): ArrayList {
        return native.get('accessibility_flow_to_nodes');
    }
    function set_accessibilityFlowToNodes(value: ArrayList): ArrayList {
      native.set('accessibility_flow_to_nodes', value);
        return value;
    }
    public var accessibilityLabeledByNodes(get, set): ArrayList;
    function get_accessibilityLabeledByNodes(): ArrayList {
        return native.get('accessibility_labeled_by_nodes');
    }
    function set_accessibilityLabeledByNodes(value: ArrayList): ArrayList {
      native.set('accessibility_labeled_by_nodes', value);
        return value;
    }
    public var accessibilityLive(get, set): Int;
    function get_accessibilityLive(): Int {
        return native.get('accessibility_live');
    }
    function set_accessibilityLive(value: Int): Int {
      native.set('accessibility_live', value);
        return value;
    }
    public var accessibilityName(get, set): String;
    function get_accessibilityName(): String {
        return native.get('accessibility_name');
    }
    function set_accessibilityName(value: String): String {
      native.set('accessibility_name', value);
        return value;
    }
    public var anchorBottom(get, set): Float;
    function get_anchorBottom(): Float {
        return native.get('anchor_bottom');
    }
    function set_anchorBottom(value: Float): Float {
      native.set('anchor_bottom', value);
        return value;
    }
    public var anchorLeft(get, set): Float;
    function get_anchorLeft(): Float {
        return native.get('anchor_left');
    }
    function set_anchorLeft(value: Float): Float {
      native.set('anchor_left', value);
        return value;
    }
    public var anchorRight(get, set): Float;
    function get_anchorRight(): Float {
        return native.get('anchor_right');
    }
    function set_anchorRight(value: Float): Float {
      native.set('anchor_right', value);
        return value;
    }
    public var anchorTop(get, set): Float;
    function get_anchorTop(): Float {
        return native.get('anchor_top');
    }
    function set_anchorTop(value: Float): Float {
      native.set('anchor_top', value);
        return value;
    }
    public var autoTranslate(get, set): Bool;
    function get_autoTranslate(): Bool {
        return native.get('auto_translate');
    }
    function set_autoTranslate(value: Bool): Bool {
      native.set('auto_translate', value);
        return value;
    }
    public var clipContents(get, set): Bool;
    function get_clipContents(): Bool {
        return native.get('clip_contents');
    }
    function set_clipContents(value: Bool): Bool {
      native.set('clip_contents', value);
        return value;
    }
    public var customMinimumSize(get, set): Vector2;
    function get_customMinimumSize(): Vector2 {
        return native.get('custom_minimum_size');
    }
    function set_customMinimumSize(value: Vector2): Vector2 {
      native.set('custom_minimum_size', value);
        return value;
    }
    public var focusBehaviorRecursive(get, set): Int;
    function get_focusBehaviorRecursive(): Int {
        return native.get('focus_behavior_recursive');
    }
    function set_focusBehaviorRecursive(value: Int): Int {
      native.set('focus_behavior_recursive', value);
        return value;
    }
    public var focusMode(get, set): Int;
    function get_focusMode(): Int {
        return native.get('focus_mode');
    }
    function set_focusMode(value: Int): Int {
      native.set('focus_mode', value);
        return value;
    }
    public var focusNeighborBottom(get, set): String;
    function get_focusNeighborBottom(): String {
        return native.get('focus_neighbor_bottom');
    }
    function set_focusNeighborBottom(value: String): String {
      native.set('focus_neighbor_bottom', value);
        return value;
    }
    public var focusNeighborLeft(get, set): String;
    function get_focusNeighborLeft(): String {
        return native.get('focus_neighbor_left');
    }
    function set_focusNeighborLeft(value: String): String {
      native.set('focus_neighbor_left', value);
        return value;
    }
    public var focusNeighborRight(get, set): String;
    function get_focusNeighborRight(): String {
        return native.get('focus_neighbor_right');
    }
    function set_focusNeighborRight(value: String): String {
      native.set('focus_neighbor_right', value);
        return value;
    }
    public var focusNeighborTop(get, set): String;
    function get_focusNeighborTop(): String {
        return native.get('focus_neighbor_top');
    }
    function set_focusNeighborTop(value: String): String {
      native.set('focus_neighbor_top', value);
        return value;
    }
    public var focusNext(get, set): String;
    function get_focusNext(): String {
        return native.get('focus_next');
    }
    function set_focusNext(value: String): String {
      native.set('focus_next', value);
        return value;
    }
    public var focusPrevious(get, set): String;
    function get_focusPrevious(): String {
        return native.get('focus_previous');
    }
    function set_focusPrevious(value: String): String {
      native.set('focus_previous', value);
        return value;
    }
    public var globalPosition(get, set): Vector2;
    function get_globalPosition(): Vector2 {
        return native.get('global_position');
    }
    function set_globalPosition(value: Vector2): Vector2 {
      native.set('global_position', value);
        return value;
    }
    public var growHorizontal(get, set): Int;
    function get_growHorizontal(): Int {
        return native.get('grow_horizontal');
    }
    function set_growHorizontal(value: Int): Int {
      native.set('grow_horizontal', value);
        return value;
    }
    public var growVertical(get, set): Int;
    function get_growVertical(): Int {
        return native.get('grow_vertical');
    }
    function set_growVertical(value: Int): Int {
      native.set('grow_vertical', value);
        return value;
    }
    public var layoutDirection(get, set): Int;
    function get_layoutDirection(): Int {
        return native.get('layout_direction');
    }
    function set_layoutDirection(value: Int): Int {
      native.set('layout_direction', value);
        return value;
    }
    public var localizeNumeralSystem(get, set): Bool;
    function get_localizeNumeralSystem(): Bool {
        return native.get('localize_numeral_system');
    }
    function set_localizeNumeralSystem(value: Bool): Bool {
      native.set('localize_numeral_system', value);
        return value;
    }
    public var mouseBehaviorRecursive(get, set): Int;
    function get_mouseBehaviorRecursive(): Int {
        return native.get('mouse_behavior_recursive');
    }
    function set_mouseBehaviorRecursive(value: Int): Int {
      native.set('mouse_behavior_recursive', value);
        return value;
    }
    public var mouseDefaultCursorShape(get, set): Int;
    function get_mouseDefaultCursorShape(): Int {
        return native.get('mouse_default_cursor_shape');
    }
    function set_mouseDefaultCursorShape(value: Int): Int {
      native.set('mouse_default_cursor_shape', value);
        return value;
    }
    public var mouseFilter(get, set): Int;
    function get_mouseFilter(): Int {
        return native.get('mouse_filter');
    }
    function set_mouseFilter(value: Int): Int {
      native.set('mouse_filter', value);
        return value;
    }
    public var mouseForcePassScrollEvents(get, set): Bool;
    function get_mouseForcePassScrollEvents(): Bool {
        return native.get('mouse_force_pass_scroll_events');
    }
    function set_mouseForcePassScrollEvents(value: Bool): Bool {
      native.set('mouse_force_pass_scroll_events', value);
        return value;
    }
    public var offsetBottom(get, set): Float;
    function get_offsetBottom(): Float {
        return native.get('offset_bottom');
    }
    function set_offsetBottom(value: Float): Float {
      native.set('offset_bottom', value);
        return value;
    }
    public var offsetLeft(get, set): Float;
    function get_offsetLeft(): Float {
        return native.get('offset_left');
    }
    function set_offsetLeft(value: Float): Float {
      native.set('offset_left', value);
        return value;
    }
    public var offsetRight(get, set): Float;
    function get_offsetRight(): Float {
        return native.get('offset_right');
    }
    function set_offsetRight(value: Float): Float {
      native.set('offset_right', value);
        return value;
    }
    public var offsetTop(get, set): Float;
    function get_offsetTop(): Float {
        return native.get('offset_top');
    }
    function set_offsetTop(value: Float): Float {
      native.set('offset_top', value);
        return value;
    }
    public var pivotOffset(get, set): Vector2;
    function get_pivotOffset(): Vector2 {
        return native.get('pivot_offset');
    }
    function set_pivotOffset(value: Vector2): Vector2 {
      native.set('pivot_offset', value);
        return value;
    }
    public var position(get, set): Vector2;
    function get_position(): Vector2 {
        return native.get('position');
    }
    function set_position(value: Vector2): Vector2 {
      native.set('position', value);
        return value;
    }
    public var rotation(get, set): Float;
    function get_rotation(): Float {
        return native.get('rotation');
    }
    function set_rotation(value: Float): Float {
      native.set('rotation', value);
        return value;
    }
    public var rotationDegrees(get, set): Float;
    function get_rotationDegrees(): Float {
        return native.get('rotation_degrees');
    }
    function set_rotationDegrees(value: Float): Float {
      native.set('rotation_degrees', value);
        return value;
    }
    public var scale(get, set): Vector2;
    function get_scale(): Vector2 {
        return native.get('scale');
    }
    function set_scale(value: Vector2): Vector2 {
      native.set('scale', value);
        return value;
    }
    public var shortcutContext(get, set): Node;
    function get_shortcutContext(): Node {
        var ref: NativeObject = native.get('shortcut_context');
        return new Node(ref);
    }
    function set_shortcutContext(value: Node): Node {
      native.set('shortcut_context', value.native);
        return value;
    }
    public var size(get, set): Vector2;
    function get_size(): Vector2 {
        return native.get('size');
    }
    function set_size(value: Vector2): Vector2 {
      native.set('size', value);
        return value;
    }
    public var sizeFlagsHorizontal(get, set): Int;
    function get_sizeFlagsHorizontal(): Int {
        return native.get('size_flags_horizontal');
    }
    function set_sizeFlagsHorizontal(value: Int): Int {
      native.set('size_flags_horizontal', value);
        return value;
    }
    public var sizeFlagsStretchRatio(get, set): Float;
    function get_sizeFlagsStretchRatio(): Float {
        return native.get('size_flags_stretch_ratio');
    }
    function set_sizeFlagsStretchRatio(value: Float): Float {
      native.set('size_flags_stretch_ratio', value);
        return value;
    }
    public var sizeFlagsVertical(get, set): Int;
    function get_sizeFlagsVertical(): Int {
        return native.get('size_flags_vertical');
    }
    function set_sizeFlagsVertical(value: Int): Int {
      native.set('size_flags_vertical', value);
        return value;
    }
    public var theme(get, set): Theme;
    function get_theme(): Theme {
        var ref: NativeReference = native.get('theme');
        return new Theme(ref);
    }
    function set_theme(value: Theme): Theme {
      native.set('theme', value.native);
        return value;
    }
    public var themeTypeVariation(get, set): String;
    function get_themeTypeVariation(): String {
        return native.get('theme_type_variation');
    }
    function set_themeTypeVariation(value: String): String {
      native.set('theme_type_variation', value);
        return value;
    }
    public var tooltipAutoTranslateMode(get, set): Int;
    function get_tooltipAutoTranslateMode(): Int {
        return native.get('tooltip_auto_translate_mode');
    }
    function set_tooltipAutoTranslateMode(value: Int): Int {
      native.set('tooltip_auto_translate_mode', value);
        return value;
    }
    public var tooltipText(get, set): String;
    function get_tooltipText(): String {
        return native.get('tooltip_text');
    }
    function set_tooltipText(value: String): String {
      native.set('tooltip_text', value);
        return value;
    }

	private var _focusEntered: Signal;
	public var focusEntered(get, default): Signal;
	function get_focusEntered(): Signal {
	    if (_focusEntered == null) {
	        _focusEntered = Signal.createFromObject(native, 'focus_entered');
	    }
	    return _focusEntered;
	}
	private var _focusExited: Signal;
	public var focusExited(get, default): Signal;
	function get_focusExited(): Signal {
	    if (_focusExited == null) {
	        _focusExited = Signal.createFromObject(native, 'focus_exited');
	    }
	    return _focusExited;
	}
	private var _guiInput: Signal;
	public var guiInput(get, default): Signal;
	function get_guiInput(): Signal {
	    if (_guiInput == null) {
	        _guiInput = Signal.createFromObject(native, 'gui_input');
	    }
	    return _guiInput;
	}
	private var _minimumSizeChanged: Signal;
	public var minimumSizeChanged(get, default): Signal;
	function get_minimumSizeChanged(): Signal {
	    if (_minimumSizeChanged == null) {
	        _minimumSizeChanged = Signal.createFromObject(native, 'minimum_size_changed');
	    }
	    return _minimumSizeChanged;
	}
	private var _mouseEntered: Signal;
	public var mouseEntered(get, default): Signal;
	function get_mouseEntered(): Signal {
	    if (_mouseEntered == null) {
	        _mouseEntered = Signal.createFromObject(native, 'mouse_entered');
	    }
	    return _mouseEntered;
	}
	private var _mouseExited: Signal;
	public var mouseExited(get, default): Signal;
	function get_mouseExited(): Signal {
	    if (_mouseExited == null) {
	        _mouseExited = Signal.createFromObject(native, 'mouse_exited');
	    }
	    return _mouseExited;
	}
	private var _resized: Signal;
	public var resized(get, default): Signal;
	function get_resized(): Signal {
	    if (_resized == null) {
	        _resized = Signal.createFromObject(native, 'resized');
	    }
	    return _resized;
	}
	private var _sizeFlagsChanged: Signal;
	public var sizeFlagsChanged(get, default): Signal;
	function get_sizeFlagsChanged(): Signal {
	    if (_sizeFlagsChanged == null) {
	        _sizeFlagsChanged = Signal.createFromObject(native, 'size_flags_changed');
	    }
	    return _sizeFlagsChanged;
	}
	private var _themeChanged: Signal;
	public var themeChanged(get, default): Signal;
	function get_themeChanged(): Signal {
	    if (_themeChanged == null) {
	        _themeChanged = Signal.createFromObject(native, 'theme_changed');
	    }
	    return _themeChanged;
	}

  public function acceptEvent(): Void {
      var args = new ArrayList();
      native.call('accept_event', args);
  }
  public function accessibilityDrag(): Void {
      var args = new ArrayList();
      native.call('accessibility_drag', args);
  }
  public function accessibilityDrop(): Void {
      var args = new ArrayList();
      native.call('accessibility_drop', args);
  }
  public function addThemeColorOverride(name: String, color: Color): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(color);
      native.call('add_theme_color_override', args);
  }
  public function addThemeConstantOverride(name: String, constant: Int): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(constant);
      native.call('add_theme_constant_override', args);
  }
  public function addThemeFontOverride(name: String, font: Font): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(font.native);
      native.call('add_theme_font_override', args);
  }
  public function addThemeFontSizeOverride(name: String, fontSize: Int): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(fontSize);
      native.call('add_theme_font_size_override', args);
  }
  public function addThemeIconOverride(name: String, texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(texture.native);
      native.call('add_theme_icon_override', args);
  }
  public function addThemeStyleboxOverride(name: String, stylebox: StyleBox): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(stylebox.native);
      native.call('add_theme_stylebox_override', args);
  }
  public function beginBulkThemeOverride(): Void {
      var args = new ArrayList();
      native.call('begin_bulk_theme_override', args);
  }
  public function endBulkThemeOverride(): Void {
      var args = new ArrayList();
      native.call('end_bulk_theme_override', args);
  }
  public function findNextValidFocus(): Control {
      var args = new ArrayList();
      var ref: NativeObject = native.call('find_next_valid_focus', args);
      return new Control(ref);
  }
  public function findPrevValidFocus(): Control {
      var args = new ArrayList();
      var ref: NativeObject = native.call('find_prev_valid_focus', args);
      return new Control(ref);
  }
  public function findValidFocusNeighbor(side: Int): Control {
      var args = new ArrayList();
      args.append(side);
      var ref: NativeObject = native.call('find_valid_focus_neighbor', args);
      return new Control(ref);
  }
  public function forceDrag(data: Variant, preview: Control): Void {
      var args = new ArrayList();
      args.append(data);
      args.append(preview.native);
      native.call('force_drag', args);
  }
  public function getAnchor(side: Int): Float {
      var args = new ArrayList();
      args.append(side);
      return native.call('get_anchor', args);
  }
  public function getBegin(): Vector2 {
      var args = new ArrayList();
      return native.call('get_begin', args);
  }
  public function getCombinedMinimumSize(): Vector2 {
      var args = new ArrayList();
      return native.call('get_combined_minimum_size', args);
  }
  public function getCursorShape(?position: Vector2): Int {
      var args = new ArrayList();
      if (position != null) {
          args.append(position);
      }
      return native.call('get_cursor_shape', args);
  }
  public function getEnd(): Vector2 {
      var args = new ArrayList();
      return native.call('get_end', args);
  }
  public function getFocusModeWithOverride(): Int {
      var args = new ArrayList();
      return native.call('get_focus_mode_with_override', args);
  }
  public function getFocusNeighbor(side: Int): String {
      var args = new ArrayList();
      args.append(side);
      return native.call('get_focus_neighbor', args);
  }
  public function getGlobalRect(): Rect2 {
      var args = new ArrayList();
      return native.call('get_global_rect', args);
  }
  public function getMinimumSize(): Vector2 {
      var args = new ArrayList();
      return native.call('get_minimum_size', args);
  }
  public function getMouseFilterWithOverride(): Int {
      var args = new ArrayList();
      return native.call('get_mouse_filter_with_override', args);
  }
  public function getOffset(offset: Int): Float {
      var args = new ArrayList();
      args.append(offset);
      return native.call('get_offset', args);
  }
  public function getParentAreaSize(): Vector2 {
      var args = new ArrayList();
      return native.call('get_parent_area_size', args);
  }
  public function getParentControl(): Control {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_parent_control', args);
      return new Control(ref);
  }
  public function getRect(): Rect2 {
      var args = new ArrayList();
      return native.call('get_rect', args);
  }
  public function getScreenPosition(): Vector2 {
      var args = new ArrayList();
      return native.call('get_screen_position', args);
  }
  public function getThemeColor(name: String, ?themeType: String): Color {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      return native.call('get_theme_color', args);
  }
  public function getThemeConstant(name: String, ?themeType: String): Int {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      return native.call('get_theme_constant', args);
  }
  public function getThemeDefaultBaseScale(): Float {
      var args = new ArrayList();
      return native.call('get_theme_default_base_scale', args);
  }
  public function getThemeDefaultFont(): Font {
      var args = new ArrayList();
      var ref: NativeReference = native.call('get_theme_default_font', args);
      return new Font(ref);
  }
  public function getThemeDefaultFontSize(): Int {
      var args = new ArrayList();
      return native.call('get_theme_default_font_size', args);
  }
  public function getThemeFont(name: String, ?themeType: String): Font {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      var ref: NativeReference = native.call('get_theme_font', args);
      return new Font(ref);
  }
  public function getThemeFontSize(name: String, ?themeType: String): Int {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      return native.call('get_theme_font_size', args);
  }
  public function getThemeIcon(name: String, ?themeType: String): Texture2D {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      var ref: NativeReference = native.call('get_theme_icon', args);
      return new Texture2D(ref);
  }
  public function getThemeStylebox(name: String, ?themeType: String): StyleBox {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      var ref: NativeReference = native.call('get_theme_stylebox', args);
      return new StyleBox(ref);
  }
  public function getTooltip(?atPosition: Vector2): String {
      var args = new ArrayList();
      if (atPosition != null) {
          args.append(atPosition);
      }
      return native.call('get_tooltip', args);
  }
  public function grabClickFocus(): Void {
      var args = new ArrayList();
      native.call('grab_click_focus', args);
  }
  public function grabFocus(): Void {
      var args = new ArrayList();
      native.call('grab_focus', args);
  }
  public function hasFocus(): Bool {
      var args = new ArrayList();
      return native.call('has_focus', args);
  }
  public function hasThemeColor(name: String, ?themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      return native.call('has_theme_color', args);
  }
  public function hasThemeColorOverride(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return native.call('has_theme_color_override', args);
  }
  public function hasThemeConstant(name: String, ?themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      return native.call('has_theme_constant', args);
  }
  public function hasThemeConstantOverride(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return native.call('has_theme_constant_override', args);
  }
  public function hasThemeFont(name: String, ?themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      return native.call('has_theme_font', args);
  }
  public function hasThemeFontOverride(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return native.call('has_theme_font_override', args);
  }
  public function hasThemeFontSize(name: String, ?themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      return native.call('has_theme_font_size', args);
  }
  public function hasThemeFontSizeOverride(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return native.call('has_theme_font_size_override', args);
  }
  public function hasThemeIcon(name: String, ?themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      return native.call('has_theme_icon', args);
  }
  public function hasThemeIconOverride(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return native.call('has_theme_icon_override', args);
  }
  public function hasThemeStylebox(name: String, ?themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      if (themeType != null) {
          args.append(themeType);
      }
      return native.call('has_theme_stylebox', args);
  }
  public function hasThemeStyleboxOverride(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return native.call('has_theme_stylebox_override', args);
  }
  public function isDragSuccessful(): Bool {
      var args = new ArrayList();
      return native.call('is_drag_successful', args);
  }
  public function isLayoutRtl(): Bool {
      var args = new ArrayList();
      return native.call('is_layout_rtl', args);
  }
  public function releaseFocus(): Void {
      var args = new ArrayList();
      native.call('release_focus', args);
  }
  public function removeThemeColorOverride(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      native.call('remove_theme_color_override', args);
  }
  public function removeThemeConstantOverride(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      native.call('remove_theme_constant_override', args);
  }
  public function removeThemeFontOverride(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      native.call('remove_theme_font_override', args);
  }
  public function removeThemeFontSizeOverride(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      native.call('remove_theme_font_size_override', args);
  }
  public function removeThemeIconOverride(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      native.call('remove_theme_icon_override', args);
  }
  public function removeThemeStyleboxOverride(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      native.call('remove_theme_stylebox_override', args);
  }
  public function resetSize(): Void {
      var args = new ArrayList();
      native.call('reset_size', args);
  }
  public function setAnchor(side: Int, anchor: Float, ?keepOffset: Bool, ?pushOppositeAnchor: Bool): Void {
      var args = new ArrayList();
      args.append(side);
      args.append(anchor);
      if (keepOffset != null) {
          args.append(keepOffset);
      }
      if (pushOppositeAnchor != null) {
          args.append(pushOppositeAnchor);
      }
      native.call('set_anchor', args);
  }
  public function setAnchorAndOffset(side: Int, anchor: Float, offset: Float, ?pushOppositeAnchor: Bool): Void {
      var args = new ArrayList();
      args.append(side);
      args.append(anchor);
      args.append(offset);
      if (pushOppositeAnchor != null) {
          args.append(pushOppositeAnchor);
      }
      native.call('set_anchor_and_offset', args);
  }
  public function setAnchorsAndOffsetsPreset(preset: Int, ?resizeMode: Int, ?margin: Int): Void {
      var args = new ArrayList();
      args.append(preset);
      if (resizeMode != null) {
          args.append(resizeMode);
      }
      if (margin != null) {
          args.append(margin);
      }
      native.call('set_anchors_and_offsets_preset', args);
  }
  public function setAnchorsPreset(preset: Int, ?keepOffsets: Bool): Void {
      var args = new ArrayList();
      args.append(preset);
      if (keepOffsets != null) {
          args.append(keepOffsets);
      }
      native.call('set_anchors_preset', args);
  }
  public function setBegin(position: Vector2): Void {
      var args = new ArrayList();
      args.append(position);
      native.call('set_begin', args);
  }
  public function setDragForwarding(dragFunc: Variant, canDropFunc: Variant, dropFunc: Variant): Void {
      var args = new ArrayList();
      args.append(dragFunc);
      args.append(canDropFunc);
      args.append(dropFunc);
      native.call('set_drag_forwarding', args);
  }
  public function setDragPreview(control: Control): Void {
      var args = new ArrayList();
      args.append(control.native);
      native.call('set_drag_preview', args);
  }
  public function setEnd(position: Vector2): Void {
      var args = new ArrayList();
      args.append(position);
      native.call('set_end', args);
  }
  public function setFocusNeighbor(side: Int, neighbor: String): Void {
      var args = new ArrayList();
      args.append(side);
      args.append(neighbor);
      native.call('set_focus_neighbor', args);
  }
  public function setGlobalPosition(position: Vector2, ?keepOffsets: Bool): Void {
      var args = new ArrayList();
      args.append(position);
      if (keepOffsets != null) {
          args.append(keepOffsets);
      }
      native.call('set_global_position', args);
  }
  public function setOffset(side: Int, offset: Float): Void {
      var args = new ArrayList();
      args.append(side);
      args.append(offset);
      native.call('set_offset', args);
  }
  public function setOffsetsPreset(preset: Int, ?resizeMode: Int, ?margin: Int): Void {
      var args = new ArrayList();
      args.append(preset);
      if (resizeMode != null) {
          args.append(resizeMode);
      }
      if (margin != null) {
          args.append(margin);
      }
      native.call('set_offsets_preset', args);
  }
  public function setPosition(position: Vector2, ?keepOffsets: Bool): Void {
      var args = new ArrayList();
      args.append(position);
      if (keepOffsets != null) {
          args.append(keepOffsets);
      }
      native.call('set_position', args);
  }
  public function setSize(size: Vector2, ?keepOffsets: Bool): Void {
      var args = new ArrayList();
      args.append(size);
      if (keepOffsets != null) {
          args.append(keepOffsets);
      }
      native.call('set_size', args);
  }
  public function updateMinimumSize(): Void {
      var args = new ArrayList();
      native.call('update_minimum_size', args);
  }
  public function warpMouse(position: Vector2): Void {
      var args = new ArrayList();
      args.append(position);
      native.call('warp_mouse', args);
  }
}
