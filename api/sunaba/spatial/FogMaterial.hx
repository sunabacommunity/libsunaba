package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Material;
import sunaba.core.Color;
import sunaba.core.Signal;

class FogMaterial extends Material {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('FogMaterial');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['FogMaterial', native];
        scriptLoader.call('loadScript', args);
    }

    public var albedo(get, set): Color;
    function get_albedo(): Color {
        return native.get('albedo');
    }
    function set_albedo(value: Color): Color {
      native.set('albedo', value);
        return value;
    }
    public var density(get, set): Float;
    function get_density(): Float {
        return native.get('density');
    }
    function set_density(value: Float): Float {
      native.set('density', value);
        return value;
    }
    public var densityTexture(get, set): Texture3D;
    function get_densityTexture(): Texture3D {
        var ref: NativeReference = native.get('density_texture');
        return new Texture3D(ref);
    }
    function set_densityTexture(value: Texture3D): Texture3D {
      native.set('density_texture', value.native);
        return value;
    }
    public var edgeFade(get, set): Float;
    function get_edgeFade(): Float {
        return native.get('edge_fade');
    }
    function set_edgeFade(value: Float): Float {
      native.set('edge_fade', value);
        return value;
    }
    public var emission(get, set): Color;
    function get_emission(): Color {
        return native.get('emission');
    }
    function set_emission(value: Color): Color {
      native.set('emission', value);
        return value;
    }
    public var heightFalloff(get, set): Float;
    function get_heightFalloff(): Float {
        return native.get('height_falloff');
    }
    function set_heightFalloff(value: Float): Float {
      native.set('height_falloff', value);
        return value;
    }


}
