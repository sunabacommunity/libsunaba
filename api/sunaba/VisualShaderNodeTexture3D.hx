package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.spatial.Texture3D;
import sunaba.core.Signal;

class VisualShaderNodeTexture3D extends VisualShaderNodeSample3D {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeTexture3D');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeTexture3D', native];
        scriptLoader.call('loadScript', args);
    }

    public var texture(get, set): Texture3D;
    function get_texture(): Texture3D {
        var ref: NativeReference = native.get('texture');
        return new Texture3D(ref);
    }
    function set_texture(value: Texture3D): Texture3D {
      native.set('texture', value.native);
        return value;
    }


}
