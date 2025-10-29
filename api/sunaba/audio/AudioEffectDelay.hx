package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class AudioEffectDelay extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectDelay');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioEffectDelay', native];
        scriptLoader.call('loadScript', args);
    }

    public var dry(get, set): Float;
    function get_dry(): Float {
        return native.get('dry');
    }
    function set_dry(value: Float): Float {
      native.set('dry', value);
        return value;
    }
    public var feedbackActive(get, set): Bool;
    function get_feedbackActive(): Bool {
        return native.get('feedback_active');
    }
    function set_feedbackActive(value: Bool): Bool {
      native.set('feedback_active', value);
        return value;
    }
    public var feedbackDelayMs(get, set): Float;
    function get_feedbackDelayMs(): Float {
        return native.get('feedback_delay_ms');
    }
    function set_feedbackDelayMs(value: Float): Float {
      native.set('feedback_delay_ms', value);
        return value;
    }
    public var feedbackLevelDb(get, set): Float;
    function get_feedbackLevelDb(): Float {
        return native.get('feedback_level_db');
    }
    function set_feedbackLevelDb(value: Float): Float {
      native.set('feedback_level_db', value);
        return value;
    }
    public var feedbackLowpass(get, set): Float;
    function get_feedbackLowpass(): Float {
        return native.get('feedback_lowpass');
    }
    function set_feedbackLowpass(value: Float): Float {
      native.set('feedback_lowpass', value);
        return value;
    }
    public var tap1Active(get, set): Bool;
    function get_tap1Active(): Bool {
        return native.get('tap1_active');
    }
    function set_tap1Active(value: Bool): Bool {
      native.set('tap1_active', value);
        return value;
    }
    public var tap1DelayMs(get, set): Float;
    function get_tap1DelayMs(): Float {
        return native.get('tap1_delay_ms');
    }
    function set_tap1DelayMs(value: Float): Float {
      native.set('tap1_delay_ms', value);
        return value;
    }
    public var tap1LevelDb(get, set): Float;
    function get_tap1LevelDb(): Float {
        return native.get('tap1_level_db');
    }
    function set_tap1LevelDb(value: Float): Float {
      native.set('tap1_level_db', value);
        return value;
    }
    public var tap1Pan(get, set): Float;
    function get_tap1Pan(): Float {
        return native.get('tap1_pan');
    }
    function set_tap1Pan(value: Float): Float {
      native.set('tap1_pan', value);
        return value;
    }
    public var tap2Active(get, set): Bool;
    function get_tap2Active(): Bool {
        return native.get('tap2_active');
    }
    function set_tap2Active(value: Bool): Bool {
      native.set('tap2_active', value);
        return value;
    }
    public var tap2DelayMs(get, set): Float;
    function get_tap2DelayMs(): Float {
        return native.get('tap2_delay_ms');
    }
    function set_tap2DelayMs(value: Float): Float {
      native.set('tap2_delay_ms', value);
        return value;
    }
    public var tap2LevelDb(get, set): Float;
    function get_tap2LevelDb(): Float {
        return native.get('tap2_level_db');
    }
    function set_tap2LevelDb(value: Float): Float {
      native.set('tap2_level_db', value);
        return value;
    }
    public var tap2Pan(get, set): Float;
    function get_tap2Pan(): Float {
        return native.get('tap2_pan');
    }
    function set_tap2Pan(value: Float): Float {
      native.set('tap2_pan', value);
        return value;
    }


}
