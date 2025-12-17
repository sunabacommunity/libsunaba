package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Color;
import sunaba.Image;
import sunaba.core.Signal;

class GLTFSpecGloss extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFSpecGloss');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFSpecGloss', native];
        scriptLoader.call('loadScript', args);
    }

    public var diffuseFactor(get, set): Color;
    function get_diffuseFactor(): Color {
        return native.get('diffuse_factor');
    }
    function set_diffuseFactor(value: Color): Color {
      native.set('diffuse_factor', value);
        return value;
    }
    public var diffuseImg(get, set): Image;
    function get_diffuseImg(): Image {
        var ref: NativeReference = native.get('diffuse_img');
        return new Image(ref);
    }
    function set_diffuseImg(value: Image): Image {
      native.set('diffuse_img', value.native);
        return value;
    }
    public var glossFactor(get, set): Float;
    function get_glossFactor(): Float {
        return native.get('gloss_factor');
    }
    function set_glossFactor(value: Float): Float {
      native.set('gloss_factor', value);
        return value;
    }
    public var specGlossImg(get, set): Image;
    function get_specGlossImg(): Image {
        var ref: NativeReference = native.get('spec_gloss_img');
        return new Image(ref);
    }
    function set_specGlossImg(value: Image): Image {
      native.set('spec_gloss_img', value.native);
        return value;
    }
    public var specularFactor(get, set): Color;
    function get_specularFactor(): Color {
        return native.get('specular_factor');
    }
    function set_specularFactor(value: Color): Color {
      native.set('specular_factor', value);
        return value;
    }


}
