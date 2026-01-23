package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeTexture2DArray extends VisualShaderNodeSample3D {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeTexture2DArray');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeTexture2DArray', native];
        scriptLoader.call('loadScript', args);
    }

    public var textureArray(get, set): TextureLayered;
    function get_textureArray(): TextureLayered {
        var ref: NativeReference = native.get('texture_array');
        return new TextureLayered(ref);
    }
    function set_textureArray(value: TextureLayered): TextureLayered {
      native.set('texture_array', value.native);
        return value;
    }


}
