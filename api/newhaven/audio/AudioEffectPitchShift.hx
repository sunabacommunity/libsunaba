package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class AudioEffectPitchShift extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectPitchShift');
        }
        native = _native;
    }

    public var fftSize(get, set): Int;
    function get_fftSize(): Int {
        return native.get('fft_size');
    }
    function set_fftSize(value: Int): Int {
      native.set('fft_size', value);
        return value;
    }
    public var oversampling(get, set): Int;
    function get_oversampling(): Int {
        return native.get('oversampling');
    }
    function set_oversampling(value: Int): Int {
      native.set('oversampling', value);
        return value;
    }
    public var pitchScale(get, set): Float;
    function get_pitchScale(): Float {
        return native.get('pitch_scale');
    }
    function set_pitchScale(value: Float): Float {
      native.set('pitch_scale', value);
        return value;
    }


}
