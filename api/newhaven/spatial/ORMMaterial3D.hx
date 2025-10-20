package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class ORMMaterial3D extends BaseMaterial3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ORMMaterial3D');
        }
        native = _native;
    }


}
