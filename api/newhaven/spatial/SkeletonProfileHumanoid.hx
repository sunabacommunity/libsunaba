package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class SkeletonProfileHumanoid extends SkeletonProfile {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('SkeletonProfileHumanoid');
        }
        native = _native;
    }


}
