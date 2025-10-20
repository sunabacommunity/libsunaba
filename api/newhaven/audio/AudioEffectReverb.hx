package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class AudioEffectReverb extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectReverb');
        }
        native = _native;
    }

    public var damping(get, set): Float;
    function get_damping(): Float {
        return native.get('damping');
    }
    function set_damping(value: Float): Float {
      native.set('damping', value);
        return value;
    }
    public var dry(get, set): Float;
    function get_dry(): Float {
        return native.get('dry');
    }
    function set_dry(value: Float): Float {
      native.set('dry', value);
        return value;
    }
    public var hipass(get, set): Float;
    function get_hipass(): Float {
        return native.get('hipass');
    }
    function set_hipass(value: Float): Float {
      native.set('hipass', value);
        return value;
    }
    public var predelayFeedback(get, set): Float;
    function get_predelayFeedback(): Float {
        return native.get('predelay_feedback');
    }
    function set_predelayFeedback(value: Float): Float {
      native.set('predelay_feedback', value);
        return value;
    }
    public var predelayMsec(get, set): Float;
    function get_predelayMsec(): Float {
        return native.get('predelay_msec');
    }
    function set_predelayMsec(value: Float): Float {
      native.set('predelay_msec', value);
        return value;
    }
    public var roomSize(get, set): Float;
    function get_roomSize(): Float {
        return native.get('room_size');
    }
    function set_roomSize(value: Float): Float {
      native.set('room_size', value);
        return value;
    }
    public var spread(get, set): Float;
    function get_spread(): Float {
        return native.get('spread');
    }
    function set_spread(value: Float): Float {
      native.set('spread', value);
        return value;
    }
    public var wet(get, set): Float;
    function get_wet(): Float {
        return native.get('wet');
    }
    function set_wet(value: Float): Float {
      native.set('wet', value);
        return value;
    }


}
