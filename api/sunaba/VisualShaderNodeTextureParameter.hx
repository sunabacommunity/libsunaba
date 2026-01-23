package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeTextureParameter extends VisualShaderNodeParameter {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeTextureParameter');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeTextureParameter', native];
        scriptLoader.call('loadScript', args);
    }

    public var colorDefault(get, set): Int;
    function get_colorDefault(): Int {
        return native.get('color_default');
    }
    function set_colorDefault(value: Int): Int {
      native.set('color_default', value);
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
    public var textureSource(get, set): Int;
    function get_textureSource(): Int {
        return native.get('texture_source');
    }
    function set_textureSource(value: Int): Int {
      native.set('texture_source', value);
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
