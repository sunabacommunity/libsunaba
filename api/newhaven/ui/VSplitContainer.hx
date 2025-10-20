package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class VSplitContainer extends SplitContainer {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('VSplitContainer');
        }
        native = _native;
    }


}
