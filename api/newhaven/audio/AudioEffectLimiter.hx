package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class AudioEffectLimiter extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectLimiter');
        }
        native = _native;
    }

    public var ceilingDb(get, set): Float;
    function get_ceilingDb(): Float {
        return native.get('ceiling_db');
    }
    function set_ceilingDb(value: Float): Float {
      native.set('ceiling_db', value);
        return value;
    }
    public var softClipDb(get, set): Float;
    function get_softClipDb(): Float {
        return native.get('soft_clip_db');
    }
    function set_softClipDb(value: Float): Float {
      native.set('soft_clip_db', value);
        return value;
    }
    public var softClipRatio(get, set): Float;
    function get_softClipRatio(): Float {
        return native.get('soft_clip_ratio');
    }
    function set_softClipRatio(value: Float): Float {
      native.set('soft_clip_ratio', value);
        return value;
    }
    public var thresholdDb(get, set): Float;
    function get_thresholdDb(): Float {
        return native.get('threshold_db');
    }
    function set_thresholdDb(value: Float): Float {
      native.set('threshold_db', value);
        return value;
    }


}
