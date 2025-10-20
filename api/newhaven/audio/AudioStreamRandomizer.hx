package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;

class AudioStreamRandomizer extends AudioStream {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamRandomizer');
        }
        native = _native;
    }

    public var playbackMode(get, set): Int;
    function get_playbackMode(): Int {
        return native.get('playback_mode');
    }
    function set_playbackMode(value: Int): Int {
      native.set('playback_mode', value);
        return value;
    }
    public var randomPitch(get, set): Float;
    function get_randomPitch(): Float {
        return native.get('random_pitch');
    }
    function set_randomPitch(value: Float): Float {
      native.set('random_pitch', value);
        return value;
    }
    public var randomVolumeOffsetDb(get, set): Float;
    function get_randomVolumeOffsetDb(): Float {
        return native.get('random_volume_offset_db');
    }
    function set_randomVolumeOffsetDb(value: Float): Float {
      native.set('random_volume_offset_db', value);
        return value;
    }
    public var streamsCount(get, set): Int;
    function get_streamsCount(): Int {
        return native.get('streams_count');
    }
    function set_streamsCount(value: Int): Int {
      native.set('streams_count', value);
        return value;
    }

  public function addStream(index: Int, stream: AudioStream, ?weight: Float): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(stream.native);
      if (weight != null) {
          args.append(weight);
      }
      native.call('add_stream', args);
  }
  public function getStream(index: Int): AudioStream {
      var args = new ArrayList();
      args.append(index);
      var ref: NativeReference = native.call('get_stream', args);
      return new AudioStream(ref);
  }
  public function getStreamProbabilityWeight(index: Int): Float {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_stream_probability_weight', args);
  }
  public function moveStream(indexFrom: Int, indexTo: Int): Void {
      var args = new ArrayList();
      args.append(indexFrom);
      args.append(indexTo);
      native.call('move_stream', args);
  }
  public function removeStream(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      native.call('remove_stream', args);
  }
  public function setStream(index: Int, stream: AudioStream): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(stream.native);
      native.call('set_stream', args);
  }
  public function setStreamProbabilityWeight(index: Int, weight: Float): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(weight);
      native.call('set_stream_probability_weight', args);
  }
}
