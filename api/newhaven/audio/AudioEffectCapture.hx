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

class AudioEffectCapture extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectCapture');
        }
        native = _native;
    }

    public var bufferLength(get, set): Float;
    function get_bufferLength(): Float {
        return native.get('buffer_length');
    }
    function set_bufferLength(value: Float): Float {
      native.set('buffer_length', value);
        return value;
    }


  public function canGetBuffer(frames: Int): Bool {
      var args = new ArrayList();
      args.append(frames);
      return native.call('can_get_buffer', args);
  }
  public function clearBuffer(): Void {
      var args = new ArrayList();
      native.call('clear_buffer', args);
  }
  public function getBuffer(frames: Int): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(frames);
      return native.call('get_buffer', args);
  }
  public function getBufferLengthFrames(): Int {
      var args = new ArrayList();
      return native.call('get_buffer_length_frames', args);
  }
  public function getDiscardedFrames(): Int {
      var args = new ArrayList();
      return native.call('get_discarded_frames', args);
  }
  public function getFramesAvailable(): Int {
      var args = new ArrayList();
      return native.call('get_frames_available', args);
  }
  public function getPushedFrames(): Int {
      var args = new ArrayList();
      return native.call('get_pushed_frames', args);
  }
}
