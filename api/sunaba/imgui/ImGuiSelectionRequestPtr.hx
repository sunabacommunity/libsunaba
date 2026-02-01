package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class ImGuiSelectionRequestPtr extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImGuiSelectionRequestPtr');
        }
        this.native = _native;
    }

    public var rangeDirection(get, set): Int;
    function get_rangeDirection(): Int {
        return native.get('RangeDirection');
    }
    function set_rangeDirection(value: Int): Int {
      native.set('RangeDirection', value);
        return value;
    }
    public var rangeFirstItem(get, set): Int;
    function get_rangeFirstItem(): Int {
        return native.get('RangeFirstItem');
    }
    function set_rangeFirstItem(value: Int): Int {
      native.set('RangeFirstItem', value);
        return value;
    }
    public var rangeLastItem(get, set): Int;
    function get_rangeLastItem(): Int {
        return native.get('RangeLastItem');
    }
    function set_rangeLastItem(value: Int): Int {
      native.set('RangeLastItem', value);
        return value;
    }
    public var selected(get, set): Bool;
    function get_selected(): Bool {
        return native.get('Selected');
    }
    function set_selected(value: Bool): Bool {
      native.set('Selected', value);
        return value;
    }
    public var type(get, set): Int;
    function get_type(): Int {
        return native.get('Type');
    }
    function set_type(value: Int): Int {
      native.set('Type', value);
        return value;
    }


}
