package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeTexture extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeTexture');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeTexture', native];
        scriptLoader.call('loadScript', args);
    }

    public var source(get, set): Int;
    function get_source(): Int {
        return native.get('source');
    }
    function set_source(value: Int): Int {
      native.set('source', value);
        return value;
    }
    public var texture(get, set): Texture2D;
    function get_texture(): Texture2D {
        var ref: NativeReference = native.get('texture');
        return new Texture2D(ref);
    }
    function set_texture(value: Texture2D): Texture2D {
      native.set('texture', value.native);
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
