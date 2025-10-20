package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class CheckBox extends Button {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('CheckBox');
        }
        native = _native;
    }


}
