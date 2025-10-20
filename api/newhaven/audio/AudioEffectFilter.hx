package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class AudioEffectFilter extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectFilter');
        }
        native = _native;
    }

    public var cutoffHz(get, set): Float;
    function get_cutoffHz(): Float {
        return native.get('cutoff_hz');
    }
    function set_cutoffHz(value: Float): Float {
      native.set('cutoff_hz', value);
        return value;
    }
    public var db(get, set): Int;
    function get_db(): Int {
        return native.get('db');
    }
    function set_db(value: Int): Int {
      native.set('db', value);
        return value;
    }
    public var gain(get, set): Float;
    function get_gain(): Float {
        return native.get('gain');
    }
    function set_gain(value: Float): Float {
      native.set('gain', value);
        return value;
    }
    public var resonance(get, set): Float;
    function get_resonance(): Float {
        return native.get('resonance');
    }
    function set_resonance(value: Float): Float {
      native.set('resonance', value);
        return value;
    }


}
