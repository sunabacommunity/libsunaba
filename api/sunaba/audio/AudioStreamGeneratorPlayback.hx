package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.Vector2;
import sunaba.core.TypedArray;
import sunaba.core.Vector2;

class AudioStreamGeneratorPlayback extends AudioStreamPlaybackResampled {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('AudioStreamGeneratorPlayback');
        }
        this.native = _native;
    }



  public function canPushBuffer(amount: Int): Bool {
      var args = new ArrayList();
      args.append(amount);
      return native.call('can_push_buffer', args);
  }
  public function clearBuffer(): Void {
      var args = new ArrayList();
      native.call('clear_buffer', args);
  }
  public function getFramesAvailable(): Int {
      var args = new ArrayList();
      return native.call('get_frames_available', args);
  }
  public function getSkips(): Int {
      var args = new ArrayList();
      return native.call('get_skips', args);
  }
  public function pushBuffer(frames: TypedArray<Vector2>): Bool {
      var args = new ArrayList();
      args.append(frames);
      return native.call('push_buffer', args);
  }
  public function pushFrame(frame: Vector2): Bool {
      var args = new ArrayList();
      args.append(frame);
      return native.call('push_frame', args);
  }
}
