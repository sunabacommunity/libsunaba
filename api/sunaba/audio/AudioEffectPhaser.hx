package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class AudioEffectPhaser extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectPhaser');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioEffectPhaser', native];
        scriptLoader.call('loadScript', args);
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
