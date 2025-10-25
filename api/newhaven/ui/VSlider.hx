package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class VSlider extends Slider {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('VSlider');
        }
        native = _native;
    }



}
