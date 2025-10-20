package newhaven.desktop;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class PopupPanel extends Popup {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('PopupPanel');
        }
        native = _native;
    }



}
