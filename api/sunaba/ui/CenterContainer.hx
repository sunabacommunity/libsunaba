package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class CenterContainer extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('CenterContainer');
        }
        native = _native;
    }

    public var useTopLeft(get, set): Bool;
    function get_useTopLeft(): Bool {
        return native.get('use_top_left');
    }
    function set_useTopLeft(value: Bool): Bool {
      native.set('use_top_left', value);
        return value;
    }


}
