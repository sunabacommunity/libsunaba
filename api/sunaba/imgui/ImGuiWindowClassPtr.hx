package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class ImGuiWindowClassPtr extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImGuiWindowClassPtr');
        }
        this.native = _native;
    }

    public var classId(get, set): Int;
    function get_classId(): Int {
        return native.get('ClassId');
    }
    function set_classId(value: Int): Int {
      native.set('ClassId', value);
        return value;
    }
    public var dockNodeFlagsOverrideSet(get, set): Int;
    function get_dockNodeFlagsOverrideSet(): Int {
        return native.get('DockNodeFlagsOverrideSet');
    }
    function set_dockNodeFlagsOverrideSet(value: Int): Int {
      native.set('DockNodeFlagsOverrideSet', value);
        return value;
    }
    public var dockingAllowUnclassed(get, set): Bool;
    function get_dockingAllowUnclassed(): Bool {
        return native.get('DockingAllowUnclassed');
    }
    function set_dockingAllowUnclassed(value: Bool): Bool {
      native.set('DockingAllowUnclassed', value);
        return value;
    }
    public var dockingAlwaysTabBar(get, set): Bool;
    function get_dockingAlwaysTabBar(): Bool {
        return native.get('DockingAlwaysTabBar');
    }
    function set_dockingAlwaysTabBar(value: Bool): Bool {
      native.set('DockingAlwaysTabBar', value);
        return value;
    }
    public var focusRouteParentWindowId(get, set): Int;
    function get_focusRouteParentWindowId(): Int {
        return native.get('FocusRouteParentWindowId');
    }
    function set_focusRouteParentWindowId(value: Int): Int {
      native.set('FocusRouteParentWindowId', value);
        return value;
    }
    public var parentViewportId(get, set): Int;
    function get_parentViewportId(): Int {
        return native.get('ParentViewportId');
    }
    function set_parentViewportId(value: Int): Int {
      native.set('ParentViewportId', value);
        return value;
    }
    public var tabItemFlagsOverrideSet(get, set): Int;
    function get_tabItemFlagsOverrideSet(): Int {
        return native.get('TabItemFlagsOverrideSet');
    }
    function set_tabItemFlagsOverrideSet(value: Int): Int {
      native.set('TabItemFlagsOverrideSet', value);
        return value;
    }
    public var viewportFlagsOverrideClear(get, set): Int;
    function get_viewportFlagsOverrideClear(): Int {
        return native.get('ViewportFlagsOverrideClear');
    }
    function set_viewportFlagsOverrideClear(value: Int): Int {
      native.set('ViewportFlagsOverrideClear', value);
        return value;
    }
    public var viewportFlagsOverrideSet(get, set): Int;
    function get_viewportFlagsOverrideSet(): Int {
        return native.get('ViewportFlagsOverrideSet');
    }
    function set_viewportFlagsOverrideSet(value: Int): Int {
      native.set('ViewportFlagsOverrideSet', value);
        return value;
    }


}
