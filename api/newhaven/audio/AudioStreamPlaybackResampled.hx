package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;

class AudioStreamPlaybackResampled extends AudioStreamPlayback {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamPlaybackResampled');
        }
        native = _native;
    }


  public function beginResample(): Void {
      var args = new ArrayList();
      native.call('begin_resample', args);
  }
}
