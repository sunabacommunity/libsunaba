package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class AudioEffectSpectrumAnalyzer extends AudioEffect {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('AudioEffectSpectrumAnalyzer');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioEffectSpectrumAnalyzer', native];
        scriptLoader.call('loadScript', args);
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
