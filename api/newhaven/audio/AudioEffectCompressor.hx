package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class AudioEffectCompressor extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectCompressor');
        }
        native = _native;
    }

    public var attackUs(get, set): Float;
    function get_attackUs(): Float {
        return native.get('attack_us');
    }
    function set_attackUs(value: Float): Float {
      native.set('attack_us', value);
        return value;
    }
    public var gain(get, set): Float;
    function get_gain(): Float {
        return native.get('gain');
    }
    function set_gain(value: Float): Float {
      native.set('gain', value);
        return value;
    }
    public var mix(get, set): Float;
    function get_mix(): Float {
        return native.get('mix');
    }
    function set_mix(value: Float): Float {
      native.set('mix', value);
        return value;
    }
    public var ratio(get, set): Float;
    function get_ratio(): Float {
        return native.get('ratio');
    }
    function set_ratio(value: Float): Float {
      native.set('ratio', value);
        return value;
    }
    public var releaseMs(get, set): Float;
    function get_releaseMs(): Float {
        return native.get('release_ms');
    }
    function set_releaseMs(value: Float): Float {
      native.set('release_ms', value);
        return value;
    }
    public var sidechain(get, set): String;
    function get_sidechain(): String {
        return native.get('sidechain');
    }
    function set_sidechain(value: String): String {
      native.set('sidechain', value);
        return value;
    }
    public var threshold(get, set): Float;
    function get_threshold(): Float {
        return native.get('threshold');
    }
    function set_threshold(value: Float): Float {
      native.set('threshold', value);
        return value;
    }

}
