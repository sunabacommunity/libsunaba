package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class AudioEffectEQ extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectEQ');
        }
        native = _native;
    }



  public function getBandCount(): Int {
      var args = new ArrayList();
      return native.call('get_band_count', args);
  }
  public function getBandGainDb(bandIdx: Int): Float {
      var args = new ArrayList();
      args.append(bandIdx);
      return native.call('get_band_gain_db', args);
  }
  public function setBandGainDb(bandIdx: Int, volumeDb: Float): Void {
      var args = new ArrayList();
      args.append(bandIdx);
      args.append(volumeDb);
      native.call('set_band_gain_db', args);
  }
}
