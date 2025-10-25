package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class AnimatedTexture extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AnimatedTexture');
        }
        native = _native;
    }

    public var currentFrame(get, set): Int;
    function get_currentFrame(): Int {
        return native.get('current_frame');
    }
    function set_currentFrame(value: Int): Int {
      native.set('current_frame', value);
        return value;
    }
    public var frames(get, set): Int;
    function get_frames(): Int {
        return native.get('frames');
    }
    function set_frames(value: Int): Int {
      native.set('frames', value);
        return value;
    }
    public var oneShot(get, set): Bool;
    function get_oneShot(): Bool {
        return native.get('one_shot');
    }
    function set_oneShot(value: Bool): Bool {
      native.set('one_shot', value);
        return value;
    }
    public var pause(get, set): Bool;
    function get_pause(): Bool {
        return native.get('pause');
    }
    function set_pause(value: Bool): Bool {
      native.set('pause', value);
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


  public function getFrameDuration(frame: Int): Float {
      var args = new ArrayList();
      args.append(frame);
      return native.call('get_frame_duration', args);
  }
  public function getFrameTexture(frame: Int): Texture2D {
      var args = new ArrayList();
      args.append(frame);
      var ref: NativeReference = native.call('get_frame_texture', args);
      return new Texture2D(ref);
  }
  public function setFrameDuration(frame: Int, duration: Float): Void {
      var args = new ArrayList();
      args.append(frame);
      args.append(duration);
      native.call('set_frame_duration', args);
  }
  public function setFrameTexture(frame: Int, texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(frame);
      args.append(texture.native);
      native.call('set_frame_texture', args);
  }
}
