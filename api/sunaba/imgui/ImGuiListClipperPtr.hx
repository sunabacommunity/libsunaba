package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class ImGuiListClipperPtr extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImGuiListClipperPtr');
        }
        this.native = _native;
    }

    public var displayEnd(get, set): Int;
    function get_displayEnd(): Int {
        return native.get('DisplayEnd');
    }
    function set_displayEnd(value: Int): Int {
      native.set('DisplayEnd', value);
        return value;
    }
    public var displayStart(get, set): Int;
    function get_displayStart(): Int {
        return native.get('DisplayStart');
    }
    function set_displayStart(value: Int): Int {
      native.set('DisplayStart', value);
        return value;
    }
    public var itemsCount(get, set): Int;
    function get_itemsCount(): Int {
        return native.get('ItemsCount');
    }
    function set_itemsCount(value: Int): Int {
      native.set('ItemsCount', value);
        return value;
    }
    public var itemsHeight(get, set): Float;
    function get_itemsHeight(): Float {
        return native.get('ItemsHeight');
    }
    function set_itemsHeight(value: Float): Float {
      native.set('ItemsHeight', value);
        return value;
    }
    public var startPosY(get, set): Float;
    function get_startPosY(): Float {
        return native.get('StartPosY');
    }
    function set_startPosY(value: Float): Float {
      native.set('StartPosY', value);
        return value;
    }
    public var startSeekOffsetY(get, set): Float;
    function get_startSeekOffsetY(): Float {
        return native.get('StartSeekOffsetY');
    }
    function set_startSeekOffsetY(value: Float): Float {
      native.set('StartSeekOffsetY', value);
        return value;
    }


}
