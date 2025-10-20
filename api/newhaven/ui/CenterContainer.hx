package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

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
