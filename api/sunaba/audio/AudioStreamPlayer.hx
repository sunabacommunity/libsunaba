package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Node;
import sunaba.core.Signal;

class AudioStreamPlayer extends Node {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('AudioStreamPlayer');
        }
        this.native = _native;
    }

    public var autoplay(get, set): Bool;
    function get_autoplay(): Bool {
        return native.get('autoplay');
    }
    function set_autoplay(value: Bool): Bool {
      native.set('autoplay', value);
        return value;
    }
    public var bus(get, set): String;
    function get_bus(): String {
        return native.get('bus');
    }
    function set_bus(value: String): String {
      native.set('bus', value);
        return value;
    }
    public var maxPolyphony(get, set): Int;
    function get_maxPolyphony(): Int {
        return native.get('max_polyphony');
    }
    function set_maxPolyphony(value: Int): Int {
      native.set('max_polyphony', value);
        return value;
    }
    public var mixTarget(get, set): Int;
    function get_mixTarget(): Int {
        return native.get('mix_target');
    }
    function set_mixTarget(value: Int): Int {
      native.set('mix_target', value);
        return value;
    }
    public var pitchScale(get, set): Float;
    function get_pitchScale(): Float {
        return native.get('pitch_scale');
    }
    function set_pitchScale(value: Float): Float {
      native.set('pitch_scale', value);
        return value;
    }
    public var playbackType(get, set): Int;
    function get_playbackType(): Int {
        return native.get('playback_type');
    }
    function set_playbackType(value: Int): Int {
      native.set('playback_type', value);
        return value;
    }
    public var playing(get, set): Bool;
    function get_playing(): Bool {
        return native.get('playing');
    }
    function set_playing(value: Bool): Bool {
      native.set('playing', value);
        return value;
    }
    public var stream(get, set): AudioStream;
    function get_stream(): AudioStream {
        var ref: NativeReference = native.get('stream');
        return new AudioStream(ref);
    }
    function set_stream(value: AudioStream): AudioStream {
      native.set('stream', value.native);
        return value;
    }
    public var streamPaused(get, set): Bool;
    function get_streamPaused(): Bool {
        return native.get('stream_paused');
    }
    function set_streamPaused(value: Bool): Bool {
      native.set('stream_paused', value);
        return value;
    }
    public var volumeDb(get, set): Float;
    function get_volumeDb(): Float {
        return native.get('volume_db');
    }
    function set_volumeDb(value: Float): Float {
      native.set('volume_db', value);
        return value;
    }
    public var volumeLinear(get, set): Float;
    function get_volumeLinear(): Float {
        return native.get('volume_linear');
    }
    function set_volumeLinear(value: Float): Float {
      native.set('volume_linear', value);
        return value;
    }

	private var _finished: Signal;
	public var finished(get, default): Signal;
	function get_finished(): Signal {
	    if (_finished == null) {
	        _finished = Signal.createFromObject(native, 'finished');
	    }
	    return _finished;
	}

  public function getPlaybackPosition(): Float {
      var args = new ArrayList();
      return native.call('get_playback_position', args);
  }
  public function getStreamPlayback(): AudioStreamPlayback {
      var args = new ArrayList();
      var ref: NativeReference = native.call('get_stream_playback', args);
      return new AudioStreamPlayback(ref);
  }
  public function hasStreamPlayback(): Bool {
      var args = new ArrayList();
      return native.call('has_stream_playback', args);
  }
  public function play(?fromPosition: Float): Void {
      var args = new ArrayList();
      if (fromPosition != null) {
          args.append(fromPosition);
      }
      native.call('play', args);
  }
  public function seek(toPosition: Float): Void {
      var args = new ArrayList();
      args.append(toPosition);
      native.call('seek', args);
  }
  public function stop(): Void {
      var args = new ArrayList();
      native.call('stop', args);
  }
}
