package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class AudioStreamPlaybackPolyphonic extends AudioStreamPlayback {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamPlaybackPolyphonic');
        }
        native = _native;
    }



  public function isStreamPlaying(stream: Int): Bool {
      var args = new ArrayList();
      args.append(stream);
      return native.call('is_stream_playing', args);
  }
  public function playStream(stream: AudioStream, ?fromOffset: Float, ?volumeDb: Float, ?pitchScale: Float, ?playbackType: Int, ?bus: String): Int {
      var args = new ArrayList();
      args.append(stream.native);
      if (fromOffset != null) {
          args.append(fromOffset);
      }
      if (volumeDb != null) {
          args.append(volumeDb);
      }
      if (pitchScale != null) {
          args.append(pitchScale);
      }
      if (playbackType != null) {
          args.append(playbackType);
      }
      if (bus != null) {
          args.append(bus);
      }
      return native.call('play_stream', args);
  }
  public function setStreamPitchScale(stream: Int, pitchScale: Float): Void {
      var args = new ArrayList();
      args.append(stream);
      args.append(pitchScale);
      native.call('set_stream_pitch_scale', args);
  }
  public function setStreamVolume(stream: Int, volumeDb: Float): Void {
      var args = new ArrayList();
      args.append(stream);
      args.append(volumeDb);
      native.call('set_stream_volume', args);
  }
  public function stopStream(stream: Int): Void {
      var args = new ArrayList();
      args.append(stream);
      native.call('stop_stream', args);
  }
}
