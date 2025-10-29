package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class AudioEffectChorus extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectChorus');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioEffectChorus', native];
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
    public var voice1CutoffHz(get, set): Float;
    function get_voice1CutoffHz(): Float {
        return native.get('voice__1__cutoff_hz');
    }
    function set_voice1CutoffHz(value: Float): Float {
      native.set('voice__1__cutoff_hz', value);
        return value;
    }
    public var voice1DelayMs(get, set): Float;
    function get_voice1DelayMs(): Float {
        return native.get('voice__1__delay_ms');
    }
    function set_voice1DelayMs(value: Float): Float {
      native.set('voice__1__delay_ms', value);
        return value;
    }
    public var voice1DepthMs(get, set): Float;
    function get_voice1DepthMs(): Float {
        return native.get('voice__1__depth_ms');
    }
    function set_voice1DepthMs(value: Float): Float {
      native.set('voice__1__depth_ms', value);
        return value;
    }
    public var voice1LevelDb(get, set): Float;
    function get_voice1LevelDb(): Float {
        return native.get('voice__1__level_db');
    }
    function set_voice1LevelDb(value: Float): Float {
      native.set('voice__1__level_db', value);
        return value;
    }
    public var voice1Pan(get, set): Float;
    function get_voice1Pan(): Float {
        return native.get('voice__1__pan');
    }
    function set_voice1Pan(value: Float): Float {
      native.set('voice__1__pan', value);
        return value;
    }
    public var voice1RateHz(get, set): Float;
    function get_voice1RateHz(): Float {
        return native.get('voice__1__rate_hz');
    }
    function set_voice1RateHz(value: Float): Float {
      native.set('voice__1__rate_hz', value);
        return value;
    }
    public var voice2CutoffHz(get, set): Float;
    function get_voice2CutoffHz(): Float {
        return native.get('voice__2__cutoff_hz');
    }
    function set_voice2CutoffHz(value: Float): Float {
      native.set('voice__2__cutoff_hz', value);
        return value;
    }
    public var voice2DelayMs(get, set): Float;
    function get_voice2DelayMs(): Float {
        return native.get('voice__2__delay_ms');
    }
    function set_voice2DelayMs(value: Float): Float {
      native.set('voice__2__delay_ms', value);
        return value;
    }
    public var voice2DepthMs(get, set): Float;
    function get_voice2DepthMs(): Float {
        return native.get('voice__2__depth_ms');
    }
    function set_voice2DepthMs(value: Float): Float {
      native.set('voice__2__depth_ms', value);
        return value;
    }
    public var voice2LevelDb(get, set): Float;
    function get_voice2LevelDb(): Float {
        return native.get('voice__2__level_db');
    }
    function set_voice2LevelDb(value: Float): Float {
      native.set('voice__2__level_db', value);
        return value;
    }
    public var voice2Pan(get, set): Float;
    function get_voice2Pan(): Float {
        return native.get('voice__2__pan');
    }
    function set_voice2Pan(value: Float): Float {
      native.set('voice__2__pan', value);
        return value;
    }
    public var voice2RateHz(get, set): Float;
    function get_voice2RateHz(): Float {
        return native.get('voice__2__rate_hz');
    }
    function set_voice2RateHz(value: Float): Float {
      native.set('voice__2__rate_hz', value);
        return value;
    }
    public var voice3CutoffHz(get, set): Float;
    function get_voice3CutoffHz(): Float {
        return native.get('voice__3__cutoff_hz');
    }
    function set_voice3CutoffHz(value: Float): Float {
      native.set('voice__3__cutoff_hz', value);
        return value;
    }
    public var voice3DelayMs(get, set): Float;
    function get_voice3DelayMs(): Float {
        return native.get('voice__3__delay_ms');
    }
    function set_voice3DelayMs(value: Float): Float {
      native.set('voice__3__delay_ms', value);
        return value;
    }
    public var voice3DepthMs(get, set): Float;
    function get_voice3DepthMs(): Float {
        return native.get('voice__3__depth_ms');
    }
    function set_voice3DepthMs(value: Float): Float {
      native.set('voice__3__depth_ms', value);
        return value;
    }
    public var voice3LevelDb(get, set): Float;
    function get_voice3LevelDb(): Float {
        return native.get('voice__3__level_db');
    }
    function set_voice3LevelDb(value: Float): Float {
      native.set('voice__3__level_db', value);
        return value;
    }
    public var voice3Pan(get, set): Float;
    function get_voice3Pan(): Float {
        return native.get('voice__3__pan');
    }
    function set_voice3Pan(value: Float): Float {
      native.set('voice__3__pan', value);
        return value;
    }
    public var voice3RateHz(get, set): Float;
    function get_voice3RateHz(): Float {
        return native.get('voice__3__rate_hz');
    }
    function set_voice3RateHz(value: Float): Float {
      native.set('voice__3__rate_hz', value);
        return value;
    }
    public var voice4CutoffHz(get, set): Float;
    function get_voice4CutoffHz(): Float {
        return native.get('voice__4__cutoff_hz');
    }
    function set_voice4CutoffHz(value: Float): Float {
      native.set('voice__4__cutoff_hz', value);
        return value;
    }
    public var voice4DelayMs(get, set): Float;
    function get_voice4DelayMs(): Float {
        return native.get('voice__4__delay_ms');
    }
    function set_voice4DelayMs(value: Float): Float {
      native.set('voice__4__delay_ms', value);
        return value;
    }
    public var voice4DepthMs(get, set): Float;
    function get_voice4DepthMs(): Float {
        return native.get('voice__4__depth_ms');
    }
    function set_voice4DepthMs(value: Float): Float {
      native.set('voice__4__depth_ms', value);
        return value;
    }
    public var voice4LevelDb(get, set): Float;
    function get_voice4LevelDb(): Float {
        return native.get('voice__4__level_db');
    }
    function set_voice4LevelDb(value: Float): Float {
      native.set('voice__4__level_db', value);
        return value;
    }
    public var voice4Pan(get, set): Float;
    function get_voice4Pan(): Float {
        return native.get('voice__4__pan');
    }
    function set_voice4Pan(value: Float): Float {
      native.set('voice__4__pan', value);
        return value;
    }
    public var voice4RateHz(get, set): Float;
    function get_voice4RateHz(): Float {
        return native.get('voice__4__rate_hz');
    }
    function set_voice4RateHz(value: Float): Float {
      native.set('voice__4__rate_hz', value);
        return value;
    }
    public var voiceCount(get, set): Int;
    function get_voiceCount(): Int {
        return native.get('voice_count');
    }
    function set_voiceCount(value: Int): Int {
      native.set('voice_count', value);
        return value;
    }
    public var wet(get, set): Float;
    function get_wet(): Float {
        return native.get('wet');
    }
    function set_wet(value: Float): Float {
      native.set('wet', value);
        return value;
    }


  public function getVoiceCutoffHz(voiceIdx: Int): Float {
      var args = new ArrayList();
      args.append(voiceIdx);
      return native.call('get_voice_cutoff_hz', args);
  }
  public function getVoiceDelayMs(voiceIdx: Int): Float {
      var args = new ArrayList();
      args.append(voiceIdx);
      return native.call('get_voice_delay_ms', args);
  }
  public function getVoiceDepthMs(voiceIdx: Int): Float {
      var args = new ArrayList();
      args.append(voiceIdx);
      return native.call('get_voice_depth_ms', args);
  }
  public function getVoiceLevelDb(voiceIdx: Int): Float {
      var args = new ArrayList();
      args.append(voiceIdx);
      return native.call('get_voice_level_db', args);
  }
  public function getVoicePan(voiceIdx: Int): Float {
      var args = new ArrayList();
      args.append(voiceIdx);
      return native.call('get_voice_pan', args);
  }
  public function getVoiceRateHz(voiceIdx: Int): Float {
      var args = new ArrayList();
      args.append(voiceIdx);
      return native.call('get_voice_rate_hz', args);
  }
  public function setVoiceCutoffHz(voiceIdx: Int, cutoffHz: Float): Void {
      var args = new ArrayList();
      args.append(voiceIdx);
      args.append(cutoffHz);
      native.call('set_voice_cutoff_hz', args);
  }
  public function setVoiceDelayMs(voiceIdx: Int, delayMs: Float): Void {
      var args = new ArrayList();
      args.append(voiceIdx);
      args.append(delayMs);
      native.call('set_voice_delay_ms', args);
  }
  public function setVoiceDepthMs(voiceIdx: Int, depthMs: Float): Void {
      var args = new ArrayList();
      args.append(voiceIdx);
      args.append(depthMs);
      native.call('set_voice_depth_ms', args);
  }
  public function setVoiceLevelDb(voiceIdx: Int, levelDb: Float): Void {
      var args = new ArrayList();
      args.append(voiceIdx);
      args.append(levelDb);
      native.call('set_voice_level_db', args);
  }
  public function setVoicePan(voiceIdx: Int, pan: Float): Void {
      var args = new ArrayList();
      args.append(voiceIdx);
      args.append(pan);
      native.call('set_voice_pan', args);
  }
  public function setVoiceRateHz(voiceIdx: Int, rateHz: Float): Void {
      var args = new ArrayList();
      args.append(voiceIdx);
      args.append(rateHz);
      native.call('set_voice_rate_hz', args);
  }
}
