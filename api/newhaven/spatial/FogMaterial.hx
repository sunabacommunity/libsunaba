package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Material;
import newhaven.core.Color;
import newhaven.core.Signal;

class FogMaterial extends Material {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('FogMaterial');
        }
        native = _native;
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
