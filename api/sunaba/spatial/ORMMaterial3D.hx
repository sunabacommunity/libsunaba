package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class ORMMaterial3D extends BaseMaterial3D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ORMMaterial3D');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['ORMMaterial3D', native];
        scriptLoader.call('loadScript', args);
    }



}
