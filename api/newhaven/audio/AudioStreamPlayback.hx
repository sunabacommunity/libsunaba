package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;
import newhaven.core.TypedArray;

class AudioStreamPlayback extends Reference {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamPlayback');
        }
        native = _native;
    }



  public function getLoopCount(): Int {
      var args = new ArrayList();
      return native.call('get_loop_count', args);
  }
  public function getPlaybackPosition(): Float {
      var args = new ArrayList();
      return native.call('get_playback_position', args);
  }
  public function isPlaying(): Bool {
      var args = new ArrayList();
      return native.call('is_playing', args);
  }
  public function mixAudio(rateScale: Float, frames: Int): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(rateScale);
      args.append(frames);
      return native.call('mix_audio', args);
  }
  public function seek(?time: Float): Void {
      var args = new ArrayList();
      if (time != null) {
          args.append(time);
      }
      native.call('seek', args);
  }
  public function setSamplePlayback(playbackSample: Variant): Void {
      var args = new ArrayList();
      args.append(playbackSample);
      native.call('set_sample_playback', args);
  }
  public function start(?fromPos: Float): Void {
      var args = new ArrayList();
      if (fromPos != null) {
          args.append(fromPos);
      }
      native.call('start', args);
  }
  public function stop(): Void {
      var args = new ArrayList();
      native.call('stop', args);
  }
}
