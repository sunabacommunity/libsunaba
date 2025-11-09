package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class AudioStreamPlaybackResampled extends AudioStreamPlayback {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('AudioStreamPlaybackResampled');
        }
        this.native = _native;
    }



  public function beginResample(): Void {
      var args = new ArrayList();
      native.call('begin_resample', args);
  }
}
