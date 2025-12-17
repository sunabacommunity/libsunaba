package sunaba.spatial.models.fbx;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.spatial.models.gltf.GLTFState;
import sunaba.core.Signal;

class FBXState extends GLTFState {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('FBXState');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['FBXState', native];
        scriptLoader.call('loadScript', args);
    }

    public var allowGeometryHelperNodes(get, set): Bool;
    function get_allowGeometryHelperNodes(): Bool {
        return native.get('allow_geometry_helper_nodes');
    }
    function set_allowGeometryHelperNodes(value: Bool): Bool {
      native.set('allow_geometry_helper_nodes', value);
        return value;
    }


}
