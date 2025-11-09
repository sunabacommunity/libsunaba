package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.BitMap;
import sunaba.Texture2D;
import sunaba.core.Signal;

class TextureButton extends BaseButton {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('TextureButton');
        }
        this.native = _native;
    }

    public var flipH(get, set): Bool;
    function get_flipH(): Bool {
        return native.get('flip_h');
    }
    function set_flipH(value: Bool): Bool {
      native.set('flip_h', value);
        return value;
    }
    public var flipV(get, set): Bool;
    function get_flipV(): Bool {
        return native.get('flip_v');
    }
    function set_flipV(value: Bool): Bool {
      native.set('flip_v', value);
        return value;
    }
    public var ignoreTextureSize(get, set): Bool;
    function get_ignoreTextureSize(): Bool {
        return native.get('ignore_texture_size');
    }
    function set_ignoreTextureSize(value: Bool): Bool {
      native.set('ignore_texture_size', value);
        return value;
    }
    public var stretchMode(get, set): Int;
    function get_stretchMode(): Int {
        return native.get('stretch_mode');
    }
    function set_stretchMode(value: Int): Int {
      native.set('stretch_mode', value);
        return value;
    }
    public var textureClickMask(get, set): BitMap;
    function get_textureClickMask(): BitMap {
        var ref: NativeReference = native.get('texture_click_mask');
        return new BitMap(ref);
    }
    function set_textureClickMask(value: BitMap): BitMap {
      native.set('texture_click_mask', value.native);
        return value;
    }
    public var textureDisabled(get, set): Texture2D;
    function get_textureDisabled(): Texture2D {
        var ref: NativeReference = native.get('texture_disabled');
        return new Texture2D(ref);
    }
    function set_textureDisabled(value: Texture2D): Texture2D {
      native.set('texture_disabled', value.native);
        return value;
    }
    public var textureFocused(get, set): Texture2D;
    function get_textureFocused(): Texture2D {
        var ref: NativeReference = native.get('texture_focused');
        return new Texture2D(ref);
    }
    function set_textureFocused(value: Texture2D): Texture2D {
      native.set('texture_focused', value.native);
        return value;
    }
    public var textureHover(get, set): Texture2D;
    function get_textureHover(): Texture2D {
        var ref: NativeReference = native.get('texture_hover');
        return new Texture2D(ref);
    }
    function set_textureHover(value: Texture2D): Texture2D {
      native.set('texture_hover', value.native);
        return value;
    }
    public var textureNormal(get, set): Texture2D;
    function get_textureNormal(): Texture2D {
        var ref: NativeReference = native.get('texture_normal');
        return new Texture2D(ref);
    }
    function set_textureNormal(value: Texture2D): Texture2D {
      native.set('texture_normal', value.native);
        return value;
    }
    public var texturePressed(get, set): Texture2D;
    function get_texturePressed(): Texture2D {
        var ref: NativeReference = native.get('texture_pressed');
        return new Texture2D(ref);
    }
    function set_texturePressed(value: Texture2D): Texture2D {
      native.set('texture_pressed', value.native);
        return value;
    }


}
