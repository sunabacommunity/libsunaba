package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class AudioEffectSpectrumAnalyzer extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectSpectrumAnalyzer');
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
    public var fftSize(get, set): Int;
    function get_fftSize(): Int {
        return native.get('fft_size');
    }
    function set_fftSize(value: Int): Int {
      native.set('fft_size', value);
        return value;
    }
    public var tapBackPos(get, set): Float;
    function get_tapBackPos(): Float {
        return native.get('tap_back_pos');
    }
    function set_tapBackPos(value: Float): Float {
      native.set('tap_back_pos', value);
        return value;
    }

}
