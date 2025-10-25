package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;

class AudioEffectSpectrumAnalyzerInstance extends AudioEffectInstance {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectSpectrumAnalyzerInstance');
        }
        native = _native;
    }



  public function getMagnitudeForFrequencyRange(fromHz: Float, toHz: Float, ?mode: Int): Vector2 {
      var args = new ArrayList();
      args.append(fromHz);
      args.append(toHz);
      if (mode != null) {
          args.append(mode);
      }
      return native.call('get_magnitude_for_frequency_range', args);
  }
}
