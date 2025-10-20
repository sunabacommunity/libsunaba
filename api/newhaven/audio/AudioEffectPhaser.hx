package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class AudioEffectPhaser extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectPhaser');
        }
        native = _native;
    }

    public var depth(get, set): Float;
    function get_depth(): Float {
        return native.get('depth');
    }
    function set_depth(value: Float): Float {
      native.set('depth', value);
        return value;
    }
    public var feedback(get, set): Float;
    function get_feedback(): Float {
        return native.get('feedback');
    }
    function set_feedback(value: Float): Float {
      native.set('feedback', value);
        return value;
    }
    public var rangeMaxHz(get, set): Float;
    function get_rangeMaxHz(): Float {
        return native.get('range_max_hz');
    }
    function set_rangeMaxHz(value: Float): Float {
      native.set('range_max_hz', value);
        return value;
    }
    public var rangeMinHz(get, set): Float;
    function get_rangeMinHz(): Float {
        return native.get('range_min_hz');
    }
    function set_rangeMinHz(value: Float): Float {
      native.set('range_min_hz', value);
        return value;
    }
    public var rateHz(get, set): Float;
    function get_rateHz(): Float {
        return native.get('rate_hz');
    }
    function set_rateHz(value: Float): Float {
      native.set('rate_hz', value);
        return value;
    }

}
