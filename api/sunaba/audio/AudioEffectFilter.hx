package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class AudioEffectFilter extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectFilter');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioEffectFilter', native];
        scriptLoader.call('loadScript', args);
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
