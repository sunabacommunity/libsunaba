package sunaba.spatial.models.fbx;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.spatial.models.gltf.GLTFDocument;
import sunaba.core.Signal;

class FBXDocument extends GLTFDocument {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('FBXDocument');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['FBXDocument', native];
        scriptLoader.call('loadScript', args);
    }



}
