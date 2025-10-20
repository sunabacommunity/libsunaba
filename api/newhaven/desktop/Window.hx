package newhaven.desktop;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Viewport;
import newhaven.core.Vector2i;
import newhaven.core.Vector2;
import newhaven.core.TypedArray;
import newhaven.ui.Theme;
import newhaven.core.Color;
import newhaven.core.ArrayList;
import newhaven.Font;
import newhaven.Texture2D;
import newhaven.ui.StyleBox;
import newhaven.core.Vector2;
import newhaven.core.Rect2i;
import newhaven.Node;

class Window extends Viewport {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('Window');
        }
        native = _native;
    }

    public var accessibilityDescription(get, set): String;
    function get_accessibilityDescription(): String {
        return native.get('accessibility_description');
    }
    function set_accessibilityDescription(value: String): String {
      native.set('accessibility_description', value);
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
    public var alwaysOnTop(get, set): Bool;
    function get_alwaysOnTop(): Bool {
        return native.get('always_on_top');
    }
    function set_alwaysOnTop(value: Bool): Bool {
      native.set('always_on_top', value);
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
    public var borderless(get, set): Bool;
    function get_borderless(): Bool {
        return native.get('borderless');
    }
    function set_borderless(value: Bool): Bool {
      native.set('borderless', value);
        return value;
    }
    public var contentScaleAspect(get, set): Int;
    function get_contentScaleAspect(): Int {
        return native.get('content_scale_aspect');
    }
    function set_contentScaleAspect(value: Int): Int {
      native.set('content_scale_aspect', value);
        return value;
    }
    public var contentScaleFactor(get, set): Float;
    function get_contentScaleFactor(): Float {
        return native.get('content_scale_factor');
    }
    function set_contentScaleFactor(value: Float): Float {
      native.set('content_scale_factor', value);
        return value;
    }
    public var contentScaleMode(get, set): Int;
    function get_contentScaleMode(): Int {
        return native.get('content_scale_mode');
    }
    function set_contentScaleMode(value: Int): Int {
      native.set('content_scale_mode', value);
        return value;
    }
    public var contentScaleSize(get, set): Vector2i;
    function get_contentScaleSize(): Vector2i {
        return native.get('content_scale_size');
    }
    function set_contentScaleSize(value: Vector2i): Vector2i {
      native.set('content_scale_size', value);
        return value;
    }
    public var contentScaleStretch(get, set): Int;
    function get_contentScaleStretch(): Int {
        return native.get('content_scale_stretch');
    }
    function set_contentScaleStretch(value: Int): Int {
      native.set('content_scale_stretch', value);
        return value;
    }
    public var currentScreen(get, set): Int;
    function get_currentScreen(): Int {
        return native.get('current_screen');
    }
    function set_currentScreen(value: Int): Int {
      native.set('current_screen', value);
        return value;
    }
    public var excludeFromCapture(get, set): Bool;
    function get_excludeFromCapture(): Bool {
        return native.get('exclude_from_capture');
    }
    function set_excludeFromCapture(value: Bool): Bool {
      native.set('exclude_from_capture', value);
        return value;
    }
    public var exclusive(get, set): Bool;
    function get_exclusive(): Bool {
        return native.get('exclusive');
    }
    function set_exclusive(value: Bool): Bool {
      native.set('exclusive', value);
        return value;
    }
    public var extendToTitle(get, set): Bool;
    function get_extendToTitle(): Bool {
        return native.get('extend_to_title');
    }
    function set_extendToTitle(value: Bool): Bool {
      native.set('extend_to_title', value);
        return value;
    }
    public var forceNative(get, set): Bool;
    function get_forceNative(): Bool {
        return native.get('force_native');
    }
    function set_forceNative(value: Bool): Bool {
      native.set('force_native', value);
        return value;
    }
    public var initialPosition(get, set): Int;
    function get_initialPosition(): Int {
        return native.get('initial_position');
    }
    function set_initialPosition(value: Int): Int {
      native.set('initial_position', value);
        return value;
    }
    public var keepTitleVisible(get, set): Bool;
    function get_keepTitleVisible(): Bool {
        return native.get('keep_title_visible');
    }
    function set_keepTitleVisible(value: Bool): Bool {
      native.set('keep_title_visible', value);
        return value;
    }
    public var maxSize(get, set): Vector2i;
    function get_maxSize(): Vector2i {
        return native.get('max_size');
    }
    function set_maxSize(value: Vector2i): Vector2i {
      native.set('max_size', value);
        return value;
    }
    public var maximizeDisabled(get, set): Bool;
    function get_maximizeDisabled(): Bool {
        return native.get('maximize_disabled');
    }
    function set_maximizeDisabled(value: Bool): Bool {
      native.set('maximize_disabled', value);
        return value;
    }
    public var minSize(get, set): Vector2i;
    function get_minSize(): Vector2i {
        return native.get('min_size');
    }
    function set_minSize(value: Vector2i): Vector2i {
      native.set('min_size', value);
        return value;
    }
    public var minimizeDisabled(get, set): Bool;
    function get_minimizeDisabled(): Bool {
        return native.get('minimize_disabled');
    }
    function set_minimizeDisabled(value: Bool): Bool {
      native.set('minimize_disabled', value);
        return value;
    }
    public var mode(get, set): Int;
    function get_mode(): Int {
        return native.get('mode');
    }
    function set_mode(value: Int): Int {
      native.set('mode', value);
        return value;
    }
    public var mousePassthrough(get, set): Bool;
    function get_mousePassthrough(): Bool {
        return native.get('mouse_passthrough');
    }
    function set_mousePassthrough(value: Bool): Bool {
      native.set('mouse_passthrough', value);
        return value;
    }
    public var mousePassthroughPolygon(get, set): TypedArray<Vector2>;
    function get_mousePassthroughPolygon(): TypedArray<Vector2> {
        return native.get('mouse_passthrough_polygon');
    }
    function set_mousePassthroughPolygon(value: TypedArray<Vector2>): TypedArray<Vector2> {
      native.set('mouse_passthrough_polygon', value);
        return value;
    }
    public var popupWindow(get, set): Bool;
    function get_popupWindow(): Bool {
        return native.get('popup_window');
    }
    function set_popupWindow(value: Bool): Bool {
      native.set('popup_window', value);
        return value;
    }
    public var popupWmHint(get, set): Bool;
    function get_popupWmHint(): Bool {
        return native.get('popup_wm_hint');
    }
    function set_popupWmHint(value: Bool): Bool {
      native.set('popup_wm_hint', value);
        return value;
    }
    public var position(get, set): Vector2i;
    function get_position(): Vector2i {
        return native.get('position');
    }
    function set_position(value: Vector2i): Vector2i {
      native.set('position', value);
        return value;
    }
    public var sharpCorners(get, set): Bool;
    function get_sharpCorners(): Bool {
        return native.get('sharp_corners');
    }
    function set_sharpCorners(value: Bool): Bool {
      native.set('sharp_corners', value);
        return value;
    }
    public var size(get, set): Vector2i;
    function get_size(): Vector2i {
        return native.get('size');
    }
    function set_size(value: Vector2i): Vector2i {
      native.set('size', value);
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
    public var title(get, set): String;
    function get_title(): String {
        return native.get('title');
    }
    function set_title(value: String): String {
      native.set('title', value);
        return value;
    }
    public var transient(get, set): Bool;
    function get_transient(): Bool {
        return native.get('transient');
    }
    function set_transient(value: Bool): Bool {
      native.set('transient', value);
        return value;
    }
    public var transientToFocused(get, set): Bool;
    function get_transientToFocused(): Bool {
        return native.get('transient_to_focused');
    }
    function set_transientToFocused(value: Bool): Bool {
      native.set('transient_to_focused', value);
        return value;
    }
    public var transparent(get, set): Bool;
    function get_transparent(): Bool {
        return native.get('transparent');
    }
    function set_transparent(value: Bool): Bool {
      native.set('transparent', value);
        return value;
    }
    public var unfocusable(get, set): Bool;
    function get_unfocusable(): Bool {
        return native.get('unfocusable');
    }
    function set_unfocusable(value: Bool): Bool {
      native.set('unfocusable', value);
        return value;
    }
    public var unresizable(get, set): Bool;
    function get_unresizable(): Bool {
        return native.get('unresizable');
    }
    function set_unresizable(value: Bool): Bool {
      native.set('unresizable', value);
        return value;
    }
    public var visible(get, set): Bool;
    function get_visible(): Bool {
        return native.get('visible');
    }
    function set_visible(value: Bool): Bool {
      native.set('visible', value);
        return value;
    }
    public var wrapControls(get, set): Bool;
    function get_wrapControls(): Bool {
        return native.get('wrap_controls');
    }
    function set_wrapControls(value: Bool): Bool {
      native.set('wrap_controls', value);
        return value;
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
  public function canDraw(): Bool {
      var args = new ArrayList();
      return native.call('can_draw', args);
  }
  public function childControlsChanged(): Void {
      var args = new ArrayList();
      native.call('child_controls_changed', args);
  }
  public function endBulkThemeOverride(): Void {
      var args = new ArrayList();
      native.call('end_bulk_theme_override', args);
  }
  public function getContentsMinimumSize(): Vector2 {
      var args = new ArrayList();
      return native.call('get_contents_minimum_size', args);
  }
  public function getFlag(flag: Int): Bool {
      var args = new ArrayList();
      args.append(flag);
      return native.call('get_flag', args);
  }
  public static function getFocusedWindow(): Window {
      var args = new ArrayList();
      var ref: NativeObject = NativeObject.callStatic('Window', 'get_focused_window', args);
      return new Window(ref);
  }
  public function getLayoutDirection(): Int {
      var args = new ArrayList();
      return native.call('get_layout_direction', args);
  }
  public function getPositionWithDecorations(): Vector2i {
      var args = new ArrayList();
      return native.call('get_position_with_decorations', args);
  }
  public function getSizeWithDecorations(): Vector2i {
      var args = new ArrayList();
      return native.call('get_size_with_decorations', args);
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
  public function getWindowId(): Int {
      var args = new ArrayList();
      return native.call('get_window_id', args);
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
  public function hide(): Void {
      var args = new ArrayList();
      native.call('hide', args);
  }
  public function isEmbedded(): Bool {
      var args = new ArrayList();
      return native.call('is_embedded', args);
  }
  public function isLayoutRtl(): Bool {
      var args = new ArrayList();
      return native.call('is_layout_rtl', args);
  }
  public function isMaximizeAllowed(): Bool {
      var args = new ArrayList();
      return native.call('is_maximize_allowed', args);
  }
  public function isUsingFontOversampling(): Bool {
      var args = new ArrayList();
      return native.call('is_using_font_oversampling', args);
  }
  public function moveToCenter(): Void {
      var args = new ArrayList();
      native.call('move_to_center', args);
  }
  public function moveToForeground(): Void {
      var args = new ArrayList();
      native.call('move_to_foreground', args);
  }
  public function popup(?rect: Rect2i): Void {
      var args = new ArrayList();
      if (rect != null) {
          args.append(rect);
      }
      native.call('popup', args);
  }
  public function popupCentered(?minsize: Vector2i): Void {
      var args = new ArrayList();
      if (minsize != null) {
          args.append(minsize);
      }
      native.call('popup_centered', args);
  }
  public function popupCenteredClamped(?minsize: Vector2i, ?fallbackRatio: Float): Void {
      var args = new ArrayList();
      if (minsize != null) {
          args.append(minsize);
      }
      if (fallbackRatio != null) {
          args.append(fallbackRatio);
      }
      native.call('popup_centered_clamped', args);
  }
  public function popupCenteredRatio(?ratio: Float): Void {
      var args = new ArrayList();
      if (ratio != null) {
          args.append(ratio);
      }
      native.call('popup_centered_ratio', args);
  }
  public function popupExclusive(fromNode: Node, ?rect: Rect2i): Void {
      var args = new ArrayList();
      args.append(fromNode.native);
      if (rect != null) {
          args.append(rect);
      }
      native.call('popup_exclusive', args);
  }
  public function popupExclusiveCentered(fromNode: Node, ?minsize: Vector2i): Void {
      var args = new ArrayList();
      args.append(fromNode.native);
      if (minsize != null) {
          args.append(minsize);
      }
      native.call('popup_exclusive_centered', args);
  }
  public function popupExclusiveCenteredClamped(fromNode: Node, ?minsize: Vector2i, ?fallbackRatio: Float): Void {
      var args = new ArrayList();
      args.append(fromNode.native);
      if (minsize != null) {
          args.append(minsize);
      }
      if (fallbackRatio != null) {
          args.append(fallbackRatio);
      }
      native.call('popup_exclusive_centered_clamped', args);
  }
  public function popupExclusiveCenteredRatio(fromNode: Node, ?ratio: Float): Void {
      var args = new ArrayList();
      args.append(fromNode.native);
      if (ratio != null) {
          args.append(ratio);
      }
      native.call('popup_exclusive_centered_ratio', args);
  }
  public function popupExclusiveOnParent(fromNode: Node, parentRect: Rect2i): Void {
      var args = new ArrayList();
      args.append(fromNode.native);
      args.append(parentRect);
      native.call('popup_exclusive_on_parent', args);
  }
  public function popupOnParent(parentRect: Rect2i): Void {
      var args = new ArrayList();
      args.append(parentRect);
      native.call('popup_on_parent', args);
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
  public function requestAttention(): Void {
      var args = new ArrayList();
      native.call('request_attention', args);
  }
  public function resetSize(): Void {
      var args = new ArrayList();
      native.call('reset_size', args);
  }
  public function setFlag(flag: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(flag);
      args.append(enabled);
      native.call('set_flag', args);
  }
  public function setImeActive(active: Bool): Void {
      var args = new ArrayList();
      args.append(active);
      native.call('set_ime_active', args);
  }
  public function setImePosition(position: Vector2i): Void {
      var args = new ArrayList();
      args.append(position);
      native.call('set_ime_position', args);
  }
  public function setLayoutDirection(direction: Int): Void {
      var args = new ArrayList();
      args.append(direction);
      native.call('set_layout_direction', args);
  }
  public function setUnparentWhenInvisible(unparent: Bool): Void {
      var args = new ArrayList();
      args.append(unparent);
      native.call('set_unparent_when_invisible', args);
  }
  public function setUseFontOversampling(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_use_font_oversampling', args);
  }
  public function show(): Void {
      var args = new ArrayList();
      native.call('show', args);
  }
  public function startDrag(): Void {
      var args = new ArrayList();
      native.call('start_drag', args);
  }
  public function startResize(edge: Int): Void {
      var args = new ArrayList();
      args.append(edge);
      native.call('start_resize', args);
  }
}
