package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class AudioEffectHardLimiter extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectHardLimiter');
        }
        native = _native;
    }

    public var ceilingDb(get, set): Float;
    function get_ceilingDb(): Float {
        return native.get('ceiling_db');
    }
    function set_ceilingDb(value: Float): Float {
      native.set('ceiling_db', value);
        return value;
    }
    public var preGainDb(get, set): Float;
    function get_preGainDb(): Float {
        return native.get('pre_gain_db');
    }
    function set_preGainDb(value: Float): Float {
      native.set('pre_gain_db', value);
        return value;
    }
    public var release(get, set): Float;
    function get_release(): Float {
        return native.get('release');
    }
    function set_release(value: Float): Float {
      native.set('release', value);
        return value;
    }

}
