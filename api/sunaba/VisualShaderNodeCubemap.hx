package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeCubemap extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeCubemap');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeCubemap', native];
        scriptLoader.call('loadScript', args);
    }

    public var cubeMap(get, set): TextureLayered;
    function get_cubeMap(): TextureLayered {
        var ref: NativeReference = native.get('cube_map');
        return new TextureLayered(ref);
    }
    function set_cubeMap(value: TextureLayered): TextureLayered {
      native.set('cube_map', value.native);
        return value;
    }
    public var source(get, set): Int;
    function get_source(): Int {
        return native.get('source');
    }
    function set_source(value: Int): Int {
      native.set('source', value);
        return value;
    }
    public var textureType(get, set): Int;
    function get_textureType(): Int {
        return native.get('texture_type');
    }
    function set_textureType(value: Int): Int {
      native.set('texture_type', value);
        return value;
    }


}
