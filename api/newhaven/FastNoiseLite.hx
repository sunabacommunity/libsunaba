package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector3;
import newhaven.core.Signal;

class FastNoiseLite extends Noise {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('FastNoiseLite');
        }
        native = _native;
    }

    public var cellularDistanceFunction(get, set): Int;
    function get_cellularDistanceFunction(): Int {
        return native.get('cellular_distance_function');
    }
    function set_cellularDistanceFunction(value: Int): Int {
      native.set('cellular_distance_function', value);
        return value;
    }
    public var cellularJitter(get, set): Float;
    function get_cellularJitter(): Float {
        return native.get('cellular_jitter');
    }
    function set_cellularJitter(value: Float): Float {
      native.set('cellular_jitter', value);
        return value;
    }
    public var cellularReturnType(get, set): Int;
    function get_cellularReturnType(): Int {
        return native.get('cellular_return_type');
    }
    function set_cellularReturnType(value: Int): Int {
      native.set('cellular_return_type', value);
        return value;
    }
    public var domainWarpAmplitude(get, set): Float;
    function get_domainWarpAmplitude(): Float {
        return native.get('domain_warp_amplitude');
    }
    function set_domainWarpAmplitude(value: Float): Float {
      native.set('domain_warp_amplitude', value);
        return value;
    }
    public var domainWarpEnabled(get, set): Bool;
    function get_domainWarpEnabled(): Bool {
        return native.get('domain_warp_enabled');
    }
    function set_domainWarpEnabled(value: Bool): Bool {
      native.set('domain_warp_enabled', value);
        return value;
    }
    public var domainWarpFractalGain(get, set): Float;
    function get_domainWarpFractalGain(): Float {
        return native.get('domain_warp_fractal_gain');
    }
    function set_domainWarpFractalGain(value: Float): Float {
      native.set('domain_warp_fractal_gain', value);
        return value;
    }
    public var domainWarpFractalLacunarity(get, set): Float;
    function get_domainWarpFractalLacunarity(): Float {
        return native.get('domain_warp_fractal_lacunarity');
    }
    function set_domainWarpFractalLacunarity(value: Float): Float {
      native.set('domain_warp_fractal_lacunarity', value);
        return value;
    }
    public var domainWarpFractalOctaves(get, set): Int;
    function get_domainWarpFractalOctaves(): Int {
        return native.get('domain_warp_fractal_octaves');
    }
    function set_domainWarpFractalOctaves(value: Int): Int {
      native.set('domain_warp_fractal_octaves', value);
        return value;
    }
    public var domainWarpFractalType(get, set): Int;
    function get_domainWarpFractalType(): Int {
        return native.get('domain_warp_fractal_type');
    }
    function set_domainWarpFractalType(value: Int): Int {
      native.set('domain_warp_fractal_type', value);
        return value;
    }
    public var domainWarpFrequency(get, set): Float;
    function get_domainWarpFrequency(): Float {
        return native.get('domain_warp_frequency');
    }
    function set_domainWarpFrequency(value: Float): Float {
      native.set('domain_warp_frequency', value);
        return value;
    }
    public var domainWarpType(get, set): Int;
    function get_domainWarpType(): Int {
        return native.get('domain_warp_type');
    }
    function set_domainWarpType(value: Int): Int {
      native.set('domain_warp_type', value);
        return value;
    }
    public var fractalGain(get, set): Float;
    function get_fractalGain(): Float {
        return native.get('fractal_gain');
    }
    function set_fractalGain(value: Float): Float {
      native.set('fractal_gain', value);
        return value;
    }
    public var fractalLacunarity(get, set): Float;
    function get_fractalLacunarity(): Float {
        return native.get('fractal_lacunarity');
    }
    function set_fractalLacunarity(value: Float): Float {
      native.set('fractal_lacunarity', value);
        return value;
    }
    public var fractalOctaves(get, set): Int;
    function get_fractalOctaves(): Int {
        return native.get('fractal_octaves');
    }
    function set_fractalOctaves(value: Int): Int {
      native.set('fractal_octaves', value);
        return value;
    }
    public var fractalPingPongStrength(get, set): Float;
    function get_fractalPingPongStrength(): Float {
        return native.get('fractal_ping_pong_strength');
    }
    function set_fractalPingPongStrength(value: Float): Float {
      native.set('fractal_ping_pong_strength', value);
        return value;
    }
    public var fractalType(get, set): Int;
    function get_fractalType(): Int {
        return native.get('fractal_type');
    }
    function set_fractalType(value: Int): Int {
      native.set('fractal_type', value);
        return value;
    }
    public var fractalWeightedStrength(get, set): Float;
    function get_fractalWeightedStrength(): Float {
        return native.get('fractal_weighted_strength');
    }
    function set_fractalWeightedStrength(value: Float): Float {
      native.set('fractal_weighted_strength', value);
        return value;
    }
    public var frequency(get, set): Float;
    function get_frequency(): Float {
        return native.get('frequency');
    }
    function set_frequency(value: Float): Float {
      native.set('frequency', value);
        return value;
    }
    public var noiseType(get, set): Int;
    function get_noiseType(): Int {
        return native.get('noise_type');
    }
    function set_noiseType(value: Int): Int {
      native.set('noise_type', value);
        return value;
    }
    public var offset(get, set): Vector3;
    function get_offset(): Vector3 {
        return native.get('offset');
    }
    function set_offset(value: Vector3): Vector3 {
      native.set('offset', value);
        return value;
    }
    public var seed(get, set): Int;
    function get_seed(): Int {
        return native.get('seed');
    }
    function set_seed(value: Int): Int {
      native.set('seed', value);
        return value;
    }


}
