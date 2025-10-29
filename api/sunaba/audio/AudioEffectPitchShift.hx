package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class AudioEffectPitchShift extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectPitchShift');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioEffectPitchShift', native];
        scriptLoader.call('loadScript', args);
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
