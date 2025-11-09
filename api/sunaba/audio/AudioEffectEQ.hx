package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class AudioEffectEQ extends AudioEffect {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('AudioEffectEQ');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioEffectEQ', native];
        scriptLoader.call('loadScript', args);
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
