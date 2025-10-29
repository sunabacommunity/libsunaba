package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Material;
import sunaba.core.Color;
import sunaba.Texture2D;
import sunaba.core.Signal;

class PhysicalSkyMaterial extends Material {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PhysicalSkyMaterial');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['PhysicalSkyMaterial', native];
        scriptLoader.call('loadScript', args);
    }

    public var energyMultiplier(get, set): Float;
    function get_energyMultiplier(): Float {
        return native.get('energy_multiplier');
    }
    function set_energyMultiplier(value: Float): Float {
      native.set('energy_multiplier', value);
        return value;
    }
    public var groundColor(get, set): Color;
    function get_groundColor(): Color {
        return native.get('ground_color');
    }
    function set_groundColor(value: Color): Color {
      native.set('ground_color', value);
        return value;
    }
    public var mieCoefficient(get, set): Float;
    function get_mieCoefficient(): Float {
        return native.get('mie_coefficient');
    }
    function set_mieCoefficient(value: Float): Float {
      native.set('mie_coefficient', value);
        return value;
    }
    public var mieColor(get, set): Color;
    function get_mieColor(): Color {
        return native.get('mie_color');
    }
    function set_mieColor(value: Color): Color {
      native.set('mie_color', value);
        return value;
    }
    public var mieEccentricity(get, set): Float;
    function get_mieEccentricity(): Float {
        return native.get('mie_eccentricity');
    }
    function set_mieEccentricity(value: Float): Float {
      native.set('mie_eccentricity', value);
        return value;
    }
    public var nightSky(get, set): Texture2D;
    function get_nightSky(): Texture2D {
        var ref: NativeReference = native.get('night_sky');
        return new Texture2D(ref);
    }
    function set_nightSky(value: Texture2D): Texture2D {
      native.set('night_sky', value.native);
        return value;
    }
    public var rayleighCoefficient(get, set): Float;
    function get_rayleighCoefficient(): Float {
        return native.get('rayleigh_coefficient');
    }
    function set_rayleighCoefficient(value: Float): Float {
      native.set('rayleigh_coefficient', value);
        return value;
    }
    public var rayleighColor(get, set): Color;
    function get_rayleighColor(): Color {
        return native.get('rayleigh_color');
    }
    function set_rayleighColor(value: Color): Color {
      native.set('rayleigh_color', value);
        return value;
    }
    public var sunDiskScale(get, set): Float;
    function get_sunDiskScale(): Float {
        return native.get('sun_disk_scale');
    }
    function set_sunDiskScale(value: Float): Float {
      native.set('sun_disk_scale', value);
        return value;
    }
    public var turbidity(get, set): Float;
    function get_turbidity(): Float {
        return native.get('turbidity');
    }
    function set_turbidity(value: Float): Float {
      native.set('turbidity', value);
        return value;
    }
    public var useDebanding(get, set): Bool;
    function get_useDebanding(): Bool {
        return native.get('use_debanding');
    }
    function set_useDebanding(value: Bool): Bool {
      native.set('use_debanding', value);
        return value;
    }


}
