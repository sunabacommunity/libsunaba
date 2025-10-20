package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;

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
