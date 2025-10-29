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

class ProceduralSkyMaterial extends Material {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ProceduralSkyMaterial');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['ProceduralSkyMaterial', native];
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
    public var groundBottomColor(get, set): Color;
    function get_groundBottomColor(): Color {
        return native.get('ground_bottom_color');
    }
    function set_groundBottomColor(value: Color): Color {
      native.set('ground_bottom_color', value);
        return value;
    }
    public var groundCurve(get, set): Float;
    function get_groundCurve(): Float {
        return native.get('ground_curve');
    }
    function set_groundCurve(value: Float): Float {
      native.set('ground_curve', value);
        return value;
    }
    public var groundEnergyMultiplier(get, set): Float;
    function get_groundEnergyMultiplier(): Float {
        return native.get('ground_energy_multiplier');
    }
    function set_groundEnergyMultiplier(value: Float): Float {
      native.set('ground_energy_multiplier', value);
        return value;
    }
    public var groundHorizonColor(get, set): Color;
    function get_groundHorizonColor(): Color {
        return native.get('ground_horizon_color');
    }
    function set_groundHorizonColor(value: Color): Color {
      native.set('ground_horizon_color', value);
        return value;
    }
    public var skyCover(get, set): Texture2D;
    function get_skyCover(): Texture2D {
        var ref: NativeReference = native.get('sky_cover');
        return new Texture2D(ref);
    }
    function set_skyCover(value: Texture2D): Texture2D {
      native.set('sky_cover', value.native);
        return value;
    }
    public var skyCoverModulate(get, set): Color;
    function get_skyCoverModulate(): Color {
        return native.get('sky_cover_modulate');
    }
    function set_skyCoverModulate(value: Color): Color {
      native.set('sky_cover_modulate', value);
        return value;
    }
    public var skyCurve(get, set): Float;
    function get_skyCurve(): Float {
        return native.get('sky_curve');
    }
    function set_skyCurve(value: Float): Float {
      native.set('sky_curve', value);
        return value;
    }
    public var skyEnergyMultiplier(get, set): Float;
    function get_skyEnergyMultiplier(): Float {
        return native.get('sky_energy_multiplier');
    }
    function set_skyEnergyMultiplier(value: Float): Float {
      native.set('sky_energy_multiplier', value);
        return value;
    }
    public var skyHorizonColor(get, set): Color;
    function get_skyHorizonColor(): Color {
        return native.get('sky_horizon_color');
    }
    function set_skyHorizonColor(value: Color): Color {
      native.set('sky_horizon_color', value);
        return value;
    }
    public var skyTopColor(get, set): Color;
    function get_skyTopColor(): Color {
        return native.get('sky_top_color');
    }
    function set_skyTopColor(value: Color): Color {
      native.set('sky_top_color', value);
        return value;
    }
    public var sunAngleMax(get, set): Float;
    function get_sunAngleMax(): Float {
        return native.get('sun_angle_max');
    }
    function set_sunAngleMax(value: Float): Float {
      native.set('sun_angle_max', value);
        return value;
    }
    public var sunCurve(get, set): Float;
    function get_sunCurve(): Float {
        return native.get('sun_curve');
    }
    function set_sunCurve(value: Float): Float {
      native.set('sun_curve', value);
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
