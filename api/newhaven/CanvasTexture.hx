package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Color;
import sunaba.core.Signal;

class CanvasTexture extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CanvasTexture');
        }
        native = _native;
    }

    public var diffuseTexture(get, set): Texture2D;
    function get_diffuseTexture(): Texture2D {
        var ref: NativeReference = native.get('diffuse_texture');
        return new Texture2D(ref);
    }
    function set_diffuseTexture(value: Texture2D): Texture2D {
      native.set('diffuse_texture', value.native);
        return value;
    }
    public var normalTexture(get, set): Texture2D;
    function get_normalTexture(): Texture2D {
        var ref: NativeReference = native.get('normal_texture');
        return new Texture2D(ref);
    }
    function set_normalTexture(value: Texture2D): Texture2D {
      native.set('normal_texture', value.native);
        return value;
    }
    public var specularColor(get, set): Color;
    function get_specularColor(): Color {
        return native.get('specular_color');
    }
    function set_specularColor(value: Color): Color {
      native.set('specular_color', value);
        return value;
    }
    public var specularShininess(get, set): Float;
    function get_specularShininess(): Float {
        return native.get('specular_shininess');
    }
    function set_specularShininess(value: Float): Float {
      native.set('specular_shininess', value);
        return value;
    }
    public var specularTexture(get, set): Texture2D;
    function get_specularTexture(): Texture2D {
        var ref: NativeReference = native.get('specular_texture');
        return new Texture2D(ref);
    }
    function set_specularTexture(value: Texture2D): Texture2D {
      native.set('specular_texture', value.native);
        return value;
    }
    public var textureFilter(get, set): Int;
    function get_textureFilter(): Int {
        return native.get('texture_filter');
    }
    function set_textureFilter(value: Int): Int {
      native.set('texture_filter', value);
        return value;
    }
    public var textureRepeat(get, set): Int;
    function get_textureRepeat(): Int {
        return native.get('texture_repeat');
    }
    function set_textureRepeat(value: Int): Int {
      native.set('texture_repeat', value);
        return value;
    }


}
