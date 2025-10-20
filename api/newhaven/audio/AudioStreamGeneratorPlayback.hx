package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;
import newhaven.core.TypedArray;
import newhaven.core.Vector2;

class AudioStreamGeneratorPlayback extends AudioStreamPlaybackResampled {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamGeneratorPlayback');
        }
        native = _native;
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
