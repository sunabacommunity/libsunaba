package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class VFlowContainer extends FlowContainer {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('VFlowContainer');
        }
        native = _native;
    }


}
