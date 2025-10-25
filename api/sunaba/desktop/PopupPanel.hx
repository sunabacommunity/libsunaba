package sunaba.desktop;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class PopupPanel extends Popup {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('PopupPanel');
        }
        native = _native;
    }



}
