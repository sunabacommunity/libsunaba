package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class ImGuiTableSortSpecsPtr extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImGuiTableSortSpecsPtr');
        }
        this.native = _native;
    }

    public var specs(get, set): ArrayList;
    function get_specs(): ArrayList {
        return native.get('Specs');
    }
    function set_specs(value: ArrayList): ArrayList {
      native.set('Specs', value);
        return value;
    }
    public var specsCount(get, set): Int;
    function get_specsCount(): Int {
        return native.get('SpecsCount');
    }
    function set_specsCount(value: Int): Int {
      native.set('SpecsCount', value);
        return value;
    }
    public var specsDirty(get, set): Bool;
    function get_specsDirty(): Bool {
        return native.get('SpecsDirty');
    }
    function set_specsDirty(value: Bool): Bool {
      native.set('SpecsDirty', value);
        return value;
    }


}
