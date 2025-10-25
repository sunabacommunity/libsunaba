package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class AudioEffectDistortion extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectDistortion');
        }
        native = _native;
    }

    public var drive(get, set): Float;
    function get_drive(): Float {
        return native.get('drive');
    }
    function set_drive(value: Float): Float {
      native.set('drive', value);
        return value;
    }
    public var keepHfHz(get, set): Float;
    function get_keepHfHz(): Float {
        return native.get('keep_hf_hz');
    }
    function set_keepHfHz(value: Float): Float {
      native.set('keep_hf_hz', value);
        return value;
    }
    public var mode(get, set): Int;
    function get_mode(): Int {
        return native.get('mode');
    }
    function set_mode(value: Int): Int {
      native.set('mode', value);
        return value;
    }
    public var postGain(get, set): Float;
    function get_postGain(): Float {
        return native.get('post_gain');
    }
    function set_postGain(value: Float): Float {
      native.set('post_gain', value);
        return value;
    }
    public var preGain(get, set): Float;
    function get_preGain(): Float {
        return native.get('pre_gain');
    }
    function set_preGain(value: Float): Float {
      native.set('pre_gain', value);
        return value;
    }


}
