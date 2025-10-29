package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class AudioStreamPlaybackInteractive extends AudioStreamPlayback {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamPlaybackInteractive');
        }
        native = _native;
    }



  public function getCurrentClipIndex(): Int {
      var args = new ArrayList();
      return native.call('get_current_clip_index', args);
  }
  public function switchToClip(clipIndex: Int): Void {
      var args = new ArrayList();
      args.append(clipIndex);
      native.call('switch_to_clip', args);
  }
  public function switchToClipByName(clipName: String): Void {
      var args = new ArrayList();
      args.append(clipName);
      native.call('switch_to_clip_by_name', args);
  }
}
