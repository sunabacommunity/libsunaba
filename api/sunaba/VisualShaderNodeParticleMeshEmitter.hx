package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeParticleMeshEmitter extends VisualShaderNodeParticleEmitter {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeParticleMeshEmitter');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeParticleMeshEmitter', native];
        scriptLoader.call('loadScript', args);
    }

    public var surfaceIndex(get, set): Int;
    function get_surfaceIndex(): Int {
        return native.get('surface_index');
    }
    function set_surfaceIndex(value: Int): Int {
      native.set('surface_index', value);
        return value;
    }
    public var useAllSurfaces(get, set): Bool;
    function get_useAllSurfaces(): Bool {
        return native.get('use_all_surfaces');
    }
    function set_useAllSurfaces(value: Bool): Bool {
      native.set('use_all_surfaces', value);
        return value;
    }


}
