package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class AudioStreamGenerator extends AudioStream {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamGenerator');
        }
        native = _native;
    }

    public var bufferLength(get, set): Float;
    function get_bufferLength(): Float {
        return native.get('buffer_length');
    }
    function set_bufferLength(value: Float): Float {
      native.set('buffer_length', value);
        return value;
    }
    public var mixRate(get, set): Float;
    function get_mixRate(): Float {
        return native.get('mix_rate');
    }
    function set_mixRate(value: Float): Float {
      native.set('mix_rate', value);
        return value;
    }
    public var mixRateMode(get, set): Int;
    function get_mixRateMode(): Int {
        return native.get('mix_rate_mode');
    }
    function set_mixRateMode(value: Int): Int {
      native.set('mix_rate_mode', value);
        return value;
    }


}
