package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class ImGuiMultiSelectIOPtr extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImGuiMultiSelectIOPtr');
        }
        this.native = _native;
    }

    public var itemsCount(get, set): Int;
    function get_itemsCount(): Int {
        return native.get('ItemsCount');
    }
    function set_itemsCount(value: Int): Int {
      native.set('ItemsCount', value);
        return value;
    }
    public var navIdItem(get, set): Int;
    function get_navIdItem(): Int {
        return native.get('NavIdItem');
    }
    function set_navIdItem(value: Int): Int {
      native.set('NavIdItem', value);
        return value;
    }
    public var navIdSelected(get, set): Bool;
    function get_navIdSelected(): Bool {
        return native.get('NavIdSelected');
    }
    function set_navIdSelected(value: Bool): Bool {
      native.set('NavIdSelected', value);
        return value;
    }
    public var rangeSrcItem(get, set): Int;
    function get_rangeSrcItem(): Int {
        return native.get('RangeSrcItem');
    }
    function set_rangeSrcItem(value: Int): Int {
      native.set('RangeSrcItem', value);
        return value;
    }
    public var rangeSrcReset(get, set): Bool;
    function get_rangeSrcReset(): Bool {
        return native.get('RangeSrcReset');
    }
    function set_rangeSrcReset(value: Bool): Bool {
      native.set('RangeSrcReset', value);
        return value;
    }
    public var requests(get, set): ArrayList;
    function get_requests(): ArrayList {
        return native.get('Requests');
    }
    function set_requests(value: ArrayList): ArrayList {
      native.set('Requests', value);
        return value;
    }


}
