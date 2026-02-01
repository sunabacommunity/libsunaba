package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Color;
import sunaba.core.TypedArray;
import sunaba.core.Signal;

class ImGuiStylePtr extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImGuiStylePtr');
        }
        this.native = _native;
    }

    public var alpha(get, set): Float;
    function get_alpha(): Float {
        return native.get('Alpha');
    }
    function set_alpha(value: Float): Float {
      native.set('Alpha', value);
        return value;
    }
    public var antiAliasedFill(get, set): Bool;
    function get_antiAliasedFill(): Bool {
        return native.get('AntiAliasedFill');
    }
    function set_antiAliasedFill(value: Bool): Bool {
      native.set('AntiAliasedFill', value);
        return value;
    }
    public var antiAliasedLines(get, set): Bool;
    function get_antiAliasedLines(): Bool {
        return native.get('AntiAliasedLines');
    }
    function set_antiAliasedLines(value: Bool): Bool {
      native.set('AntiAliasedLines', value);
        return value;
    }
    public var antiAliasedLinesUseTex(get, set): Bool;
    function get_antiAliasedLinesUseTex(): Bool {
        return native.get('AntiAliasedLinesUseTex');
    }
    function set_antiAliasedLinesUseTex(value: Bool): Bool {
      native.set('AntiAliasedLinesUseTex', value);
        return value;
    }
    public var buttonTextAlign(get, set): Vector2;
    function get_buttonTextAlign(): Vector2 {
        return native.get('ButtonTextAlign');
    }
    function set_buttonTextAlign(value: Vector2): Vector2 {
      native.set('ButtonTextAlign', value);
        return value;
    }
    public var cellPadding(get, set): Vector2;
    function get_cellPadding(): Vector2 {
        return native.get('CellPadding');
    }
    function set_cellPadding(value: Vector2): Vector2 {
      native.set('CellPadding', value);
        return value;
    }
    public var childBorderSize(get, set): Float;
    function get_childBorderSize(): Float {
        return native.get('ChildBorderSize');
    }
    function set_childBorderSize(value: Float): Float {
      native.set('ChildBorderSize', value);
        return value;
    }
    public var childRounding(get, set): Float;
    function get_childRounding(): Float {
        return native.get('ChildRounding');
    }
    function set_childRounding(value: Float): Float {
      native.set('ChildRounding', value);
        return value;
    }
    public var circleTessellationMaxError(get, set): Float;
    function get_circleTessellationMaxError(): Float {
        return native.get('CircleTessellationMaxError');
    }
    function set_circleTessellationMaxError(value: Float): Float {
      native.set('CircleTessellationMaxError', value);
        return value;
    }
    public var colorButtonPosition(get, set): Int;
    function get_colorButtonPosition(): Int {
        return native.get('ColorButtonPosition');
    }
    function set_colorButtonPosition(value: Int): Int {
      native.set('ColorButtonPosition', value);
        return value;
    }
    public var colors(get, set): TypedArray<Color>;
    function get_colors(): TypedArray<Color> {
        return native.get('Colors');
    }
    function set_colors(value: TypedArray<Color>): TypedArray<Color> {
      native.set('Colors', value);
        return value;
    }
    public var columnsMinSpacing(get, set): Float;
    function get_columnsMinSpacing(): Float {
        return native.get('ColumnsMinSpacing');
    }
    function set_columnsMinSpacing(value: Float): Float {
      native.set('ColumnsMinSpacing', value);
        return value;
    }
    public var curveTessellationTol(get, set): Float;
    function get_curveTessellationTol(): Float {
        return native.get('CurveTessellationTol');
    }
    function set_curveTessellationTol(value: Float): Float {
      native.set('CurveTessellationTol', value);
        return value;
    }
    public var disabledAlpha(get, set): Float;
    function get_disabledAlpha(): Float {
        return native.get('DisabledAlpha');
    }
    function set_disabledAlpha(value: Float): Float {
      native.set('DisabledAlpha', value);
        return value;
    }
    public var displaySafeAreaPadding(get, set): Vector2;
    function get_displaySafeAreaPadding(): Vector2 {
        return native.get('DisplaySafeAreaPadding');
    }
    function set_displaySafeAreaPadding(value: Vector2): Vector2 {
      native.set('DisplaySafeAreaPadding', value);
        return value;
    }
    public var displayWindowPadding(get, set): Vector2;
    function get_displayWindowPadding(): Vector2 {
        return native.get('DisplayWindowPadding');
    }
    function set_displayWindowPadding(value: Vector2): Vector2 {
      native.set('DisplayWindowPadding', value);
        return value;
    }
    public var dockingSeparatorSize(get, set): Float;
    function get_dockingSeparatorSize(): Float {
        return native.get('DockingSeparatorSize');
    }
    function set_dockingSeparatorSize(value: Float): Float {
      native.set('DockingSeparatorSize', value);
        return value;
    }
    public var frameBorderSize(get, set): Float;
    function get_frameBorderSize(): Float {
        return native.get('FrameBorderSize');
    }
    function set_frameBorderSize(value: Float): Float {
      native.set('FrameBorderSize', value);
        return value;
    }
    public var framePadding(get, set): Vector2;
    function get_framePadding(): Vector2 {
        return native.get('FramePadding');
    }
    function set_framePadding(value: Vector2): Vector2 {
      native.set('FramePadding', value);
        return value;
    }
    public var frameRounding(get, set): Float;
    function get_frameRounding(): Float {
        return native.get('FrameRounding');
    }
    function set_frameRounding(value: Float): Float {
      native.set('FrameRounding', value);
        return value;
    }
    public var grabMinSize(get, set): Float;
    function get_grabMinSize(): Float {
        return native.get('GrabMinSize');
    }
    function set_grabMinSize(value: Float): Float {
      native.set('GrabMinSize', value);
        return value;
    }
    public var grabRounding(get, set): Float;
    function get_grabRounding(): Float {
        return native.get('GrabRounding');
    }
    function set_grabRounding(value: Float): Float {
      native.set('GrabRounding', value);
        return value;
    }
    public var hoverDelayNormal(get, set): Float;
    function get_hoverDelayNormal(): Float {
        return native.get('HoverDelayNormal');
    }
    function set_hoverDelayNormal(value: Float): Float {
      native.set('HoverDelayNormal', value);
        return value;
    }
    public var hoverDelayShort(get, set): Float;
    function get_hoverDelayShort(): Float {
        return native.get('HoverDelayShort');
    }
    function set_hoverDelayShort(value: Float): Float {
      native.set('HoverDelayShort', value);
        return value;
    }
    public var hoverFlagsForTooltipMouse(get, set): Int;
    function get_hoverFlagsForTooltipMouse(): Int {
        return native.get('HoverFlagsForTooltipMouse');
    }
    function set_hoverFlagsForTooltipMouse(value: Int): Int {
      native.set('HoverFlagsForTooltipMouse', value);
        return value;
    }
    public var hoverFlagsForTooltipNav(get, set): Int;
    function get_hoverFlagsForTooltipNav(): Int {
        return native.get('HoverFlagsForTooltipNav');
    }
    function set_hoverFlagsForTooltipNav(value: Int): Int {
      native.set('HoverFlagsForTooltipNav', value);
        return value;
    }
    public var hoverStationaryDelay(get, set): Float;
    function get_hoverStationaryDelay(): Float {
        return native.get('HoverStationaryDelay');
    }
    function set_hoverStationaryDelay(value: Float): Float {
      native.set('HoverStationaryDelay', value);
        return value;
    }
    public var indentSpacing(get, set): Float;
    function get_indentSpacing(): Float {
        return native.get('IndentSpacing');
    }
    function set_indentSpacing(value: Float): Float {
      native.set('IndentSpacing', value);
        return value;
    }
    public var itemInnerSpacing(get, set): Vector2;
    function get_itemInnerSpacing(): Vector2 {
        return native.get('ItemInnerSpacing');
    }
    function set_itemInnerSpacing(value: Vector2): Vector2 {
      native.set('ItemInnerSpacing', value);
        return value;
    }
    public var itemSpacing(get, set): Vector2;
    function get_itemSpacing(): Vector2 {
        return native.get('ItemSpacing');
    }
    function set_itemSpacing(value: Vector2): Vector2 {
      native.set('ItemSpacing', value);
        return value;
    }
    public var logSliderDeadzone(get, set): Float;
    function get_logSliderDeadzone(): Float {
        return native.get('LogSliderDeadzone');
    }
    function set_logSliderDeadzone(value: Float): Float {
      native.set('LogSliderDeadzone', value);
        return value;
    }
    public var mouseCursorScale(get, set): Float;
    function get_mouseCursorScale(): Float {
        return native.get('MouseCursorScale');
    }
    function set_mouseCursorScale(value: Float): Float {
      native.set('MouseCursorScale', value);
        return value;
    }
    public var popupBorderSize(get, set): Float;
    function get_popupBorderSize(): Float {
        return native.get('PopupBorderSize');
    }
    function set_popupBorderSize(value: Float): Float {
      native.set('PopupBorderSize', value);
        return value;
    }
    public var popupRounding(get, set): Float;
    function get_popupRounding(): Float {
        return native.get('PopupRounding');
    }
    function set_popupRounding(value: Float): Float {
      native.set('PopupRounding', value);
        return value;
    }
    public var scrollbarRounding(get, set): Float;
    function get_scrollbarRounding(): Float {
        return native.get('ScrollbarRounding');
    }
    function set_scrollbarRounding(value: Float): Float {
      native.set('ScrollbarRounding', value);
        return value;
    }
    public var scrollbarSize(get, set): Float;
    function get_scrollbarSize(): Float {
        return native.get('ScrollbarSize');
    }
    function set_scrollbarSize(value: Float): Float {
      native.set('ScrollbarSize', value);
        return value;
    }
    public var selectableTextAlign(get, set): Vector2;
    function get_selectableTextAlign(): Vector2 {
        return native.get('SelectableTextAlign');
    }
    function set_selectableTextAlign(value: Vector2): Vector2 {
      native.set('SelectableTextAlign', value);
        return value;
    }
    public var separatorTextAlign(get, set): Vector2;
    function get_separatorTextAlign(): Vector2 {
        return native.get('SeparatorTextAlign');
    }
    function set_separatorTextAlign(value: Vector2): Vector2 {
      native.set('SeparatorTextAlign', value);
        return value;
    }
    public var separatorTextBorderSize(get, set): Float;
    function get_separatorTextBorderSize(): Float {
        return native.get('SeparatorTextBorderSize');
    }
    function set_separatorTextBorderSize(value: Float): Float {
      native.set('SeparatorTextBorderSize', value);
        return value;
    }
    public var separatorTextPadding(get, set): Vector2;
    function get_separatorTextPadding(): Vector2 {
        return native.get('SeparatorTextPadding');
    }
    function set_separatorTextPadding(value: Vector2): Vector2 {
      native.set('SeparatorTextPadding', value);
        return value;
    }
    public var tabBarBorderSize(get, set): Float;
    function get_tabBarBorderSize(): Float {
        return native.get('TabBarBorderSize');
    }
    function set_tabBarBorderSize(value: Float): Float {
      native.set('TabBarBorderSize', value);
        return value;
    }
    public var tabBarOverlineSize(get, set): Float;
    function get_tabBarOverlineSize(): Float {
        return native.get('TabBarOverlineSize');
    }
    function set_tabBarOverlineSize(value: Float): Float {
      native.set('TabBarOverlineSize', value);
        return value;
    }
    public var tabBorderSize(get, set): Float;
    function get_tabBorderSize(): Float {
        return native.get('TabBorderSize');
    }
    function set_tabBorderSize(value: Float): Float {
      native.set('TabBorderSize', value);
        return value;
    }
    public var tabMinWidthForCloseButton(get, set): Float;
    function get_tabMinWidthForCloseButton(): Float {
        return native.get('TabMinWidthForCloseButton');
    }
    function set_tabMinWidthForCloseButton(value: Float): Float {
      native.set('TabMinWidthForCloseButton', value);
        return value;
    }
    public var tabRounding(get, set): Float;
    function get_tabRounding(): Float {
        return native.get('TabRounding');
    }
    function set_tabRounding(value: Float): Float {
      native.set('TabRounding', value);
        return value;
    }
    public var tableAngledHeadersAngle(get, set): Float;
    function get_tableAngledHeadersAngle(): Float {
        return native.get('TableAngledHeadersAngle');
    }
    function set_tableAngledHeadersAngle(value: Float): Float {
      native.set('TableAngledHeadersAngle', value);
        return value;
    }
    public var tableAngledHeadersTextAlign(get, set): Vector2;
    function get_tableAngledHeadersTextAlign(): Vector2 {
        return native.get('TableAngledHeadersTextAlign');
    }
    function set_tableAngledHeadersTextAlign(value: Vector2): Vector2 {
      native.set('TableAngledHeadersTextAlign', value);
        return value;
    }
    public var touchExtraPadding(get, set): Vector2;
    function get_touchExtraPadding(): Vector2 {
        return native.get('TouchExtraPadding');
    }
    function set_touchExtraPadding(value: Vector2): Vector2 {
      native.set('TouchExtraPadding', value);
        return value;
    }
    public var windowBorderSize(get, set): Float;
    function get_windowBorderSize(): Float {
        return native.get('WindowBorderSize');
    }
    function set_windowBorderSize(value: Float): Float {
      native.set('WindowBorderSize', value);
        return value;
    }
    public var windowMenuButtonPosition(get, set): Int;
    function get_windowMenuButtonPosition(): Int {
        return native.get('WindowMenuButtonPosition');
    }
    function set_windowMenuButtonPosition(value: Int): Int {
      native.set('WindowMenuButtonPosition', value);
        return value;
    }
    public var windowMinSize(get, set): Vector2;
    function get_windowMinSize(): Vector2 {
        return native.get('WindowMinSize');
    }
    function set_windowMinSize(value: Vector2): Vector2 {
      native.set('WindowMinSize', value);
        return value;
    }
    public var windowPadding(get, set): Vector2;
    function get_windowPadding(): Vector2 {
        return native.get('WindowPadding');
    }
    function set_windowPadding(value: Vector2): Vector2 {
      native.set('WindowPadding', value);
        return value;
    }
    public var windowRounding(get, set): Float;
    function get_windowRounding(): Float {
        return native.get('WindowRounding');
    }
    function set_windowRounding(value: Float): Float {
      native.set('WindowRounding', value);
        return value;
    }
    public var windowTitleAlign(get, set): Vector2;
    function get_windowTitleAlign(): Vector2 {
        return native.get('WindowTitleAlign');
    }
    function set_windowTitleAlign(value: Vector2): Vector2 {
      native.set('WindowTitleAlign', value);
        return value;
    }


}
