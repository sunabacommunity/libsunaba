package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class VScrollBar extends ScrollBar {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('VScrollBar');
        }
        native = _native;
    }


}
