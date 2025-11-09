package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class AudioEffectStereoEnhance extends AudioEffect {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('AudioEffectStereoEnhance');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioEffectStereoEnhance', native];
        scriptLoader.call('loadScript', args);
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
