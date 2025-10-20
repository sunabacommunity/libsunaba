package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class AudioEffectStereoEnhance extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectStereoEnhance');
        }
        native = _native;
    }

    public var panPullout(get, set): Float;
    function get_panPullout(): Float {
        return native.get('pan_pullout');
    }
    function set_panPullout(value: Float): Float {
      native.set('pan_pullout', value);
        return value;
    }
    public var surround(get, set): Float;
    function get_surround(): Float {
        return native.get('surround');
    }
    function set_surround(value: Float): Float {
      native.set('surround', value);
        return value;
    }
    public var timePulloutMs(get, set): Float;
    function get_timePulloutMs(): Float {
        return native.get('time_pullout_ms');
    }
    function set_timePulloutMs(value: Float): Float {
      native.set('time_pullout_ms', value);
        return value;
    }


}
