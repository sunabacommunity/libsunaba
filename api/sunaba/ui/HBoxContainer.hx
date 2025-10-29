package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class HBoxContainer extends BoxContainer {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('HBoxContainer');
        }
        native = _native;
    }



}
