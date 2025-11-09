package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class GridContainer extends Container {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('GridContainer');
        }
        this.native = _native;
    }

    public var columns(get, set): Int;
    function get_columns(): Int {
        return native.get('columns');
    }
    function set_columns(value: Int): Int {
      native.set('columns', value);
        return value;
    }


}
