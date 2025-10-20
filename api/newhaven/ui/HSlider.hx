package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class HSlider extends Slider {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('HSlider');
        }
        native = _native;
    }


}
