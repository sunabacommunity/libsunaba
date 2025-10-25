package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.VideoStream;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.Texture2D;

class VideoStreamPlayer extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('VideoStreamPlayer');
        }
        native = _native;
    }

    public var audioTrack(get, set): Int;
    function get_audioTrack(): Int {
        return native.get('audio_track');
    }
    function set_audioTrack(value: Int): Int {
      native.set('audio_track', value);
        return value;
    }
    public var autoplay(get, set): Bool;
    function get_autoplay(): Bool {
        return native.get('autoplay');
    }
    function set_autoplay(value: Bool): Bool {
      native.set('autoplay', value);
        return value;
    }
    public var bufferingMsec(get, set): Int;
    function get_bufferingMsec(): Int {
        return native.get('buffering_msec');
    }
    function set_bufferingMsec(value: Int): Int {
      native.set('buffering_msec', value);
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
    public var expand(get, set): Bool;
    function get_expand(): Bool {
        return native.get('expand');
    }
    function set_expand(value: Bool): Bool {
      native.set('expand', value);
        return value;
    }
    public var loop(get, set): Bool;
    function get_loop(): Bool {
        return native.get('loop');
    }
    function set_loop(value: Bool): Bool {
      native.set('loop', value);
        return value;
    }
    public var paused(get, set): Bool;
    function get_paused(): Bool {
        return native.get('paused');
    }
    function set_paused(value: Bool): Bool {
      native.set('paused', value);
        return value;
    }
    public var speedScale(get, set): Float;
    function get_speedScale(): Float {
        return native.get('speed_scale');
    }
    function set_speedScale(value: Float): Float {
      native.set('speed_scale', value);
        return value;
    }
    public var stream(get, set): VideoStream;
    function get_stream(): VideoStream {
        var ref: NativeReference = native.get('stream');
        return new VideoStream(ref);
    }
    function set_stream(value: VideoStream): VideoStream {
      native.set('stream', value.native);
        return value;
    }
    public var streamPosition(get, set): Float;
    function get_streamPosition(): Float {
        return native.get('stream_position');
    }
    function set_streamPosition(value: Float): Float {
      native.set('stream_position', value);
        return value;
    }
    public var volume(get, set): Float;
    function get_volume(): Float {
        return native.get('volume');
    }
    function set_volume(value: Float): Float {
      native.set('volume', value);
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

	private var _finished: Signal;
	public var finished(get, default): Signal;
	function get_finished(): Signal {
	    if (_finished == null) {
	        _finished = Signal.createFromObject(native, 'finished');
	    }
	    return _finished;
	}

  public function getStreamLength(): Float {
      var args = new ArrayList();
      return native.call('get_stream_length', args);
  }
  public function getStreamName(): String {
      var args = new ArrayList();
      return native.call('get_stream_name', args);
  }
  public function getVideoTexture(): Texture2D {
      var args = new ArrayList();
      var ref: NativeReference = native.call('get_video_texture', args);
      return new Texture2D(ref);
  }
  public function isPlaying(): Bool {
      var args = new ArrayList();
      return native.call('is_playing', args);
  }
  public function play(): Void {
      var args = new ArrayList();
      native.call('play', args);
  }
  public function stop(): Void {
      var args = new ArrayList();
      native.call('stop', args);
  }
}
