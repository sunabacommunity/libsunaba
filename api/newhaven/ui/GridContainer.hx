package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class GridContainer extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('GridContainer');
        }
        native = _native;
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
