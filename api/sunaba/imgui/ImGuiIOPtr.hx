package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Signal;

class ImGuiIOPtr extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImGuiIOPtr');
        }
        this.native = _native;
    }

    public var appAcceptingEvents(get, set): Bool;
    function get_appAcceptingEvents(): Bool {
        return native.get('AppAcceptingEvents');
    }
    function set_appAcceptingEvents(value: Bool): Bool {
      native.set('AppAcceptingEvents', value);
        return value;
    }
    public var appFocusLost(get, set): Bool;
    function get_appFocusLost(): Bool {
        return native.get('AppFocusLost');
    }
    function set_appFocusLost(value: Bool): Bool {
      native.set('AppFocusLost', value);
        return value;
    }
    public var backendFlags(get, set): Int;
    function get_backendFlags(): Int {
        return native.get('BackendFlags');
    }
    function set_backendFlags(value: Int): Int {
      native.set('BackendFlags', value);
        return value;
    }
    public var configDebugBeginReturnValueLoop(get, set): Bool;
    function get_configDebugBeginReturnValueLoop(): Bool {
        return native.get('ConfigDebugBeginReturnValueLoop');
    }
    function set_configDebugBeginReturnValueLoop(value: Bool): Bool {
      native.set('ConfigDebugBeginReturnValueLoop', value);
        return value;
    }
    public var configDebugBeginReturnValueOnce(get, set): Bool;
    function get_configDebugBeginReturnValueOnce(): Bool {
        return native.get('ConfigDebugBeginReturnValueOnce');
    }
    function set_configDebugBeginReturnValueOnce(value: Bool): Bool {
      native.set('ConfigDebugBeginReturnValueOnce', value);
        return value;
    }
    public var configDebugHighlightIdConflicts(get, set): Bool;
    function get_configDebugHighlightIdConflicts(): Bool {
        return native.get('ConfigDebugHighlightIdConflicts');
    }
    function set_configDebugHighlightIdConflicts(value: Bool): Bool {
      native.set('ConfigDebugHighlightIdConflicts', value);
        return value;
    }
    public var configDebugIgnoreFocusLoss(get, set): Bool;
    function get_configDebugIgnoreFocusLoss(): Bool {
        return native.get('ConfigDebugIgnoreFocusLoss');
    }
    function set_configDebugIgnoreFocusLoss(value: Bool): Bool {
      native.set('ConfigDebugIgnoreFocusLoss', value);
        return value;
    }
    public var configDebugIniSettings(get, set): Bool;
    function get_configDebugIniSettings(): Bool {
        return native.get('ConfigDebugIniSettings');
    }
    function set_configDebugIniSettings(value: Bool): Bool {
      native.set('ConfigDebugIniSettings', value);
        return value;
    }
    public var configDebugIsDebuggerPresent(get, set): Bool;
    function get_configDebugIsDebuggerPresent(): Bool {
        return native.get('ConfigDebugIsDebuggerPresent');
    }
    function set_configDebugIsDebuggerPresent(value: Bool): Bool {
      native.set('ConfigDebugIsDebuggerPresent', value);
        return value;
    }
    public var configDockingAlwaysTabBar(get, set): Bool;
    function get_configDockingAlwaysTabBar(): Bool {
        return native.get('ConfigDockingAlwaysTabBar');
    }
    function set_configDockingAlwaysTabBar(value: Bool): Bool {
      native.set('ConfigDockingAlwaysTabBar', value);
        return value;
    }
    public var configDockingNoSplit(get, set): Bool;
    function get_configDockingNoSplit(): Bool {
        return native.get('ConfigDockingNoSplit');
    }
    function set_configDockingNoSplit(value: Bool): Bool {
      native.set('ConfigDockingNoSplit', value);
        return value;
    }
    public var configDockingTransparentPayload(get, set): Bool;
    function get_configDockingTransparentPayload(): Bool {
        return native.get('ConfigDockingTransparentPayload');
    }
    function set_configDockingTransparentPayload(value: Bool): Bool {
      native.set('ConfigDockingTransparentPayload', value);
        return value;
    }
    public var configDockingWithShift(get, set): Bool;
    function get_configDockingWithShift(): Bool {
        return native.get('ConfigDockingWithShift');
    }
    function set_configDockingWithShift(value: Bool): Bool {
      native.set('ConfigDockingWithShift', value);
        return value;
    }
    public var configDragClickToInputText(get, set): Bool;
    function get_configDragClickToInputText(): Bool {
        return native.get('ConfigDragClickToInputText');
    }
    function set_configDragClickToInputText(value: Bool): Bool {
      native.set('ConfigDragClickToInputText', value);
        return value;
    }
    public var configErrorRecovery(get, set): Bool;
    function get_configErrorRecovery(): Bool {
        return native.get('ConfigErrorRecovery');
    }
    function set_configErrorRecovery(value: Bool): Bool {
      native.set('ConfigErrorRecovery', value);
        return value;
    }
    public var configErrorRecoveryEnableAssert(get, set): Bool;
    function get_configErrorRecoveryEnableAssert(): Bool {
        return native.get('ConfigErrorRecoveryEnableAssert');
    }
    function set_configErrorRecoveryEnableAssert(value: Bool): Bool {
      native.set('ConfigErrorRecoveryEnableAssert', value);
        return value;
    }
    public var configErrorRecoveryEnableDebugLog(get, set): Bool;
    function get_configErrorRecoveryEnableDebugLog(): Bool {
        return native.get('ConfigErrorRecoveryEnableDebugLog');
    }
    function set_configErrorRecoveryEnableDebugLog(value: Bool): Bool {
      native.set('ConfigErrorRecoveryEnableDebugLog', value);
        return value;
    }
    public var configErrorRecoveryEnableTooltip(get, set): Bool;
    function get_configErrorRecoveryEnableTooltip(): Bool {
        return native.get('ConfigErrorRecoveryEnableTooltip');
    }
    function set_configErrorRecoveryEnableTooltip(value: Bool): Bool {
      native.set('ConfigErrorRecoveryEnableTooltip', value);
        return value;
    }
    public var configFlags(get, set): Int;
    function get_configFlags(): Int {
        return native.get('ConfigFlags');
    }
    function set_configFlags(value: Int): Int {
      native.set('ConfigFlags', value);
        return value;
    }
    public var configInputTextCursorBlink(get, set): Bool;
    function get_configInputTextCursorBlink(): Bool {
        return native.get('ConfigInputTextCursorBlink');
    }
    function set_configInputTextCursorBlink(value: Bool): Bool {
      native.set('ConfigInputTextCursorBlink', value);
        return value;
    }
    public var configInputTextEnterKeepActive(get, set): Bool;
    function get_configInputTextEnterKeepActive(): Bool {
        return native.get('ConfigInputTextEnterKeepActive');
    }
    function set_configInputTextEnterKeepActive(value: Bool): Bool {
      native.set('ConfigInputTextEnterKeepActive', value);
        return value;
    }
    public var configInputTrickleEventQueue(get, set): Bool;
    function get_configInputTrickleEventQueue(): Bool {
        return native.get('ConfigInputTrickleEventQueue');
    }
    function set_configInputTrickleEventQueue(value: Bool): Bool {
      native.set('ConfigInputTrickleEventQueue', value);
        return value;
    }
    public var configMacOsxBehaviors(get, set): Bool;
    function get_configMacOsxBehaviors(): Bool {
        return native.get('ConfigMacOSXBehaviors');
    }
    function set_configMacOsxBehaviors(value: Bool): Bool {
      native.set('ConfigMacOSXBehaviors', value);
        return value;
    }
    public var configMemoryCompactTimer(get, set): Float;
    function get_configMemoryCompactTimer(): Float {
        return native.get('ConfigMemoryCompactTimer');
    }
    function set_configMemoryCompactTimer(value: Float): Float {
      native.set('ConfigMemoryCompactTimer', value);
        return value;
    }
    public var configNavCaptureKeyboard(get, set): Bool;
    function get_configNavCaptureKeyboard(): Bool {
        return native.get('ConfigNavCaptureKeyboard');
    }
    function set_configNavCaptureKeyboard(value: Bool): Bool {
      native.set('ConfigNavCaptureKeyboard', value);
        return value;
    }
    public var configNavCursorVisibleAlways(get, set): Bool;
    function get_configNavCursorVisibleAlways(): Bool {
        return native.get('ConfigNavCursorVisibleAlways');
    }
    function set_configNavCursorVisibleAlways(value: Bool): Bool {
      native.set('ConfigNavCursorVisibleAlways', value);
        return value;
    }
    public var configNavCursorVisibleAuto(get, set): Bool;
    function get_configNavCursorVisibleAuto(): Bool {
        return native.get('ConfigNavCursorVisibleAuto');
    }
    function set_configNavCursorVisibleAuto(value: Bool): Bool {
      native.set('ConfigNavCursorVisibleAuto', value);
        return value;
    }
    public var configNavEscapeClearFocusItem(get, set): Bool;
    function get_configNavEscapeClearFocusItem(): Bool {
        return native.get('ConfigNavEscapeClearFocusItem');
    }
    function set_configNavEscapeClearFocusItem(value: Bool): Bool {
      native.set('ConfigNavEscapeClearFocusItem', value);
        return value;
    }
    public var configNavEscapeClearFocusWindow(get, set): Bool;
    function get_configNavEscapeClearFocusWindow(): Bool {
        return native.get('ConfigNavEscapeClearFocusWindow');
    }
    function set_configNavEscapeClearFocusWindow(value: Bool): Bool {
      native.set('ConfigNavEscapeClearFocusWindow', value);
        return value;
    }
    public var configNavMoveSetMousePos(get, set): Bool;
    function get_configNavMoveSetMousePos(): Bool {
        return native.get('ConfigNavMoveSetMousePos');
    }
    function set_configNavMoveSetMousePos(value: Bool): Bool {
      native.set('ConfigNavMoveSetMousePos', value);
        return value;
    }
    public var configNavSwapGamepadButtons(get, set): Bool;
    function get_configNavSwapGamepadButtons(): Bool {
        return native.get('ConfigNavSwapGamepadButtons');
    }
    function set_configNavSwapGamepadButtons(value: Bool): Bool {
      native.set('ConfigNavSwapGamepadButtons', value);
        return value;
    }
    public var configScrollbarScrollByPage(get, set): Bool;
    function get_configScrollbarScrollByPage(): Bool {
        return native.get('ConfigScrollbarScrollByPage');
    }
    function set_configScrollbarScrollByPage(value: Bool): Bool {
      native.set('ConfigScrollbarScrollByPage', value);
        return value;
    }
    public var configViewportsNoAutoMerge(get, set): Bool;
    function get_configViewportsNoAutoMerge(): Bool {
        return native.get('ConfigViewportsNoAutoMerge');
    }
    function set_configViewportsNoAutoMerge(value: Bool): Bool {
      native.set('ConfigViewportsNoAutoMerge', value);
        return value;
    }
    public var configViewportsNoDecoration(get, set): Bool;
    function get_configViewportsNoDecoration(): Bool {
        return native.get('ConfigViewportsNoDecoration');
    }
    function set_configViewportsNoDecoration(value: Bool): Bool {
      native.set('ConfigViewportsNoDecoration', value);
        return value;
    }
    public var configViewportsNoDefaultParent(get, set): Bool;
    function get_configViewportsNoDefaultParent(): Bool {
        return native.get('ConfigViewportsNoDefaultParent');
    }
    function set_configViewportsNoDefaultParent(value: Bool): Bool {
      native.set('ConfigViewportsNoDefaultParent', value);
        return value;
    }
    public var configViewportsNoTaskBarIcon(get, set): Bool;
    function get_configViewportsNoTaskBarIcon(): Bool {
        return native.get('ConfigViewportsNoTaskBarIcon');
    }
    function set_configViewportsNoTaskBarIcon(value: Bool): Bool {
      native.set('ConfigViewportsNoTaskBarIcon', value);
        return value;
    }
    public var configWindowsCopyContentsWithCtrlC(get, set): Bool;
    function get_configWindowsCopyContentsWithCtrlC(): Bool {
        return native.get('ConfigWindowsCopyContentsWithCtrlC');
    }
    function set_configWindowsCopyContentsWithCtrlC(value: Bool): Bool {
      native.set('ConfigWindowsCopyContentsWithCtrlC', value);
        return value;
    }
    public var configWindowsMoveFromTitleBarOnly(get, set): Bool;
    function get_configWindowsMoveFromTitleBarOnly(): Bool {
        return native.get('ConfigWindowsMoveFromTitleBarOnly');
    }
    function set_configWindowsMoveFromTitleBarOnly(value: Bool): Bool {
      native.set('ConfigWindowsMoveFromTitleBarOnly', value);
        return value;
    }
    public var configWindowsResizeFromEdges(get, set): Bool;
    function get_configWindowsResizeFromEdges(): Bool {
        return native.get('ConfigWindowsResizeFromEdges');
    }
    function set_configWindowsResizeFromEdges(value: Bool): Bool {
      native.set('ConfigWindowsResizeFromEdges', value);
        return value;
    }
    public var deltaTime(get, set): Float;
    function get_deltaTime(): Float {
        return native.get('DeltaTime');
    }
    function set_deltaTime(value: Float): Float {
      native.set('DeltaTime', value);
        return value;
    }
    public var displayFramebufferScale(get, set): Vector2;
    function get_displayFramebufferScale(): Vector2 {
        return native.get('DisplayFramebufferScale');
    }
    function set_displayFramebufferScale(value: Vector2): Vector2 {
      native.set('DisplayFramebufferScale', value);
        return value;
    }
    public var displaySize(get, set): Vector2;
    function get_displaySize(): Vector2 {
        return native.get('DisplaySize');
    }
    function set_displaySize(value: Vector2): Vector2 {
      native.set('DisplaySize', value);
        return value;
    }
    public var fontAllowUserScaling(get, set): Bool;
    function get_fontAllowUserScaling(): Bool {
        return native.get('FontAllowUserScaling');
    }
    function set_fontAllowUserScaling(value: Bool): Bool {
      native.set('FontAllowUserScaling', value);
        return value;
    }
    public var fontDefault(get, set): Int;
    function get_fontDefault(): Int {
        return native.get('FontDefault');
    }
    function set_fontDefault(value: Int): Int {
      native.set('FontDefault', value);
        return value;
    }
    public var fontGlobalScale(get, set): Float;
    function get_fontGlobalScale(): Float {
        return native.get('FontGlobalScale');
    }
    function set_fontGlobalScale(value: Float): Float {
      native.set('FontGlobalScale', value);
        return value;
    }
    public var framerate(get, set): Float;
    function get_framerate(): Float {
        return native.get('Framerate');
    }
    function set_framerate(value: Float): Float {
      native.set('Framerate', value);
        return value;
    }
    public var iniSavingRate(get, set): Float;
    function get_iniSavingRate(): Float {
        return native.get('IniSavingRate');
    }
    function set_iniSavingRate(value: Float): Float {
      native.set('IniSavingRate', value);
        return value;
    }
    public var keyAlt(get, set): Bool;
    function get_keyAlt(): Bool {
        return native.get('KeyAlt');
    }
    function set_keyAlt(value: Bool): Bool {
      native.set('KeyAlt', value);
        return value;
    }
    public var keyCtrl(get, set): Bool;
    function get_keyCtrl(): Bool {
        return native.get('KeyCtrl');
    }
    function set_keyCtrl(value: Bool): Bool {
      native.set('KeyCtrl', value);
        return value;
    }
    public var keyRepeatDelay(get, set): Float;
    function get_keyRepeatDelay(): Float {
        return native.get('KeyRepeatDelay');
    }
    function set_keyRepeatDelay(value: Float): Float {
      native.set('KeyRepeatDelay', value);
        return value;
    }
    public var keyRepeatRate(get, set): Float;
    function get_keyRepeatRate(): Float {
        return native.get('KeyRepeatRate');
    }
    function set_keyRepeatRate(value: Float): Float {
      native.set('KeyRepeatRate', value);
        return value;
    }
    public var keyShift(get, set): Bool;
    function get_keyShift(): Bool {
        return native.get('KeyShift');
    }
    function set_keyShift(value: Bool): Bool {
      native.set('KeyShift', value);
        return value;
    }
    public var keySuper(get, set): Bool;
    function get_keySuper(): Bool {
        return native.get('KeySuper');
    }
    function set_keySuper(value: Bool): Bool {
      native.set('KeySuper', value);
        return value;
    }
    public var metricsActiveWindows(get, set): Int;
    function get_metricsActiveWindows(): Int {
        return native.get('MetricsActiveWindows');
    }
    function set_metricsActiveWindows(value: Int): Int {
      native.set('MetricsActiveWindows', value);
        return value;
    }
    public var metricsRenderIndices(get, set): Int;
    function get_metricsRenderIndices(): Int {
        return native.get('MetricsRenderIndices');
    }
    function set_metricsRenderIndices(value: Int): Int {
      native.set('MetricsRenderIndices', value);
        return value;
    }
    public var metricsRenderVertices(get, set): Int;
    function get_metricsRenderVertices(): Int {
        return native.get('MetricsRenderVertices');
    }
    function set_metricsRenderVertices(value: Int): Int {
      native.set('MetricsRenderVertices', value);
        return value;
    }
    public var metricsRenderWindows(get, set): Int;
    function get_metricsRenderWindows(): Int {
        return native.get('MetricsRenderWindows');
    }
    function set_metricsRenderWindows(value: Int): Int {
      native.set('MetricsRenderWindows', value);
        return value;
    }
    public var mouseCtrlLeftAsRightClick(get, set): Bool;
    function get_mouseCtrlLeftAsRightClick(): Bool {
        return native.get('MouseCtrlLeftAsRightClick');
    }
    function set_mouseCtrlLeftAsRightClick(value: Bool): Bool {
      native.set('MouseCtrlLeftAsRightClick', value);
        return value;
    }
    public var mouseDelta(get, set): Vector2;
    function get_mouseDelta(): Vector2 {
        return native.get('MouseDelta');
    }
    function set_mouseDelta(value: Vector2): Vector2 {
      native.set('MouseDelta', value);
        return value;
    }
    public var mouseDoubleClickMaxDist(get, set): Float;
    function get_mouseDoubleClickMaxDist(): Float {
        return native.get('MouseDoubleClickMaxDist');
    }
    function set_mouseDoubleClickMaxDist(value: Float): Float {
      native.set('MouseDoubleClickMaxDist', value);
        return value;
    }
    public var mouseDoubleClickTime(get, set): Float;
    function get_mouseDoubleClickTime(): Float {
        return native.get('MouseDoubleClickTime');
    }
    function set_mouseDoubleClickTime(value: Float): Float {
      native.set('MouseDoubleClickTime', value);
        return value;
    }
    public var mouseDragThreshold(get, set): Float;
    function get_mouseDragThreshold(): Float {
        return native.get('MouseDragThreshold');
    }
    function set_mouseDragThreshold(value: Float): Float {
      native.set('MouseDragThreshold', value);
        return value;
    }
    public var mouseDrawCursor(get, set): Bool;
    function get_mouseDrawCursor(): Bool {
        return native.get('MouseDrawCursor');
    }
    function set_mouseDrawCursor(value: Bool): Bool {
      native.set('MouseDrawCursor', value);
        return value;
    }
    public var mouseHoveredViewport(get, set): Int;
    function get_mouseHoveredViewport(): Int {
        return native.get('MouseHoveredViewport');
    }
    function set_mouseHoveredViewport(value: Int): Int {
      native.set('MouseHoveredViewport', value);
        return value;
    }
    public var mousePos(get, set): Vector2;
    function get_mousePos(): Vector2 {
        return native.get('MousePos');
    }
    function set_mousePos(value: Vector2): Vector2 {
      native.set('MousePos', value);
        return value;
    }
    public var mousePosPrev(get, set): Vector2;
    function get_mousePosPrev(): Vector2 {
        return native.get('MousePosPrev');
    }
    function set_mousePosPrev(value: Vector2): Vector2 {
      native.set('MousePosPrev', value);
        return value;
    }
    public var mouseSource(get, set): Int;
    function get_mouseSource(): Int {
        return native.get('MouseSource');
    }
    function set_mouseSource(value: Int): Int {
      native.set('MouseSource', value);
        return value;
    }
    public var mouseWheel(get, set): Float;
    function get_mouseWheel(): Float {
        return native.get('MouseWheel');
    }
    function set_mouseWheel(value: Float): Float {
      native.set('MouseWheel', value);
        return value;
    }
    public var mouseWheelH(get, set): Float;
    function get_mouseWheelH(): Float {
        return native.get('MouseWheelH');
    }
    function set_mouseWheelH(value: Float): Float {
      native.set('MouseWheelH', value);
        return value;
    }
    public var mouseWheelRequestAxisSwap(get, set): Bool;
    function get_mouseWheelRequestAxisSwap(): Bool {
        return native.get('MouseWheelRequestAxisSwap');
    }
    function set_mouseWheelRequestAxisSwap(value: Bool): Bool {
      native.set('MouseWheelRequestAxisSwap', value);
        return value;
    }
    public var navActive(get, set): Bool;
    function get_navActive(): Bool {
        return native.get('NavActive');
    }
    function set_navActive(value: Bool): Bool {
      native.set('NavActive', value);
        return value;
    }
    public var navVisible(get, set): Bool;
    function get_navVisible(): Bool {
        return native.get('NavVisible');
    }
    function set_navVisible(value: Bool): Bool {
      native.set('NavVisible', value);
        return value;
    }
    public var penPressure(get, set): Float;
    function get_penPressure(): Float {
        return native.get('PenPressure');
    }
    function set_penPressure(value: Float): Float {
      native.set('PenPressure', value);
        return value;
    }
    public var wantCaptureKeyboard(get, set): Bool;
    function get_wantCaptureKeyboard(): Bool {
        return native.get('WantCaptureKeyboard');
    }
    function set_wantCaptureKeyboard(value: Bool): Bool {
      native.set('WantCaptureKeyboard', value);
        return value;
    }
    public var wantCaptureMouse(get, set): Bool;
    function get_wantCaptureMouse(): Bool {
        return native.get('WantCaptureMouse');
    }
    function set_wantCaptureMouse(value: Bool): Bool {
      native.set('WantCaptureMouse', value);
        return value;
    }
    public var wantCaptureMouseUnlessPopupClose(get, set): Bool;
    function get_wantCaptureMouseUnlessPopupClose(): Bool {
        return native.get('WantCaptureMouseUnlessPopupClose');
    }
    function set_wantCaptureMouseUnlessPopupClose(value: Bool): Bool {
      native.set('WantCaptureMouseUnlessPopupClose', value);
        return value;
    }
    public var wantSaveIniSettings(get, set): Bool;
    function get_wantSaveIniSettings(): Bool {
        return native.get('WantSaveIniSettings');
    }
    function set_wantSaveIniSettings(value: Bool): Bool {
      native.set('WantSaveIniSettings', value);
        return value;
    }
    public var wantSetMousePos(get, set): Bool;
    function get_wantSetMousePos(): Bool {
        return native.get('WantSetMousePos');
    }
    function set_wantSetMousePos(value: Bool): Bool {
      native.set('WantSetMousePos', value);
        return value;
    }
    public var wantTextInput(get, set): Bool;
    function get_wantTextInput(): Bool {
        return native.get('WantTextInput');
    }
    function set_wantTextInput(value: Bool): Bool {
      native.set('WantTextInput', value);
        return value;
    }


}
