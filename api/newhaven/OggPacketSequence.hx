package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.TypedArray;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class OggPacketSequence extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('OggPacketSequence');
        }
        native = _native;
    }

    public var granulePositions(get, set): TypedArray<Int>;
    function get_granulePositions(): TypedArray<Int> {
        return native.get('granule_positions');
    }
    function set_granulePositions(value: TypedArray<Int>): TypedArray<Int> {
      native.set('granule_positions', value);
        return value;
    }
    public var samplingRate(get, set): Float;
    function get_samplingRate(): Float {
        return native.get('sampling_rate');
    }
    function set_samplingRate(value: Float): Float {
      native.set('sampling_rate', value);
        return value;
    }


  public function getLength(): Float {
      var args = new ArrayList();
      return native.call('get_length', args);
  }
}
