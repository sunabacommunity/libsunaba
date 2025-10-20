package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class VideoStreamTheora extends VideoStream {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('VideoStreamTheora');
        }
        native = _native;
    }


}
