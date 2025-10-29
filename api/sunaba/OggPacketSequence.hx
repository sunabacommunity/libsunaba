package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.TypedArray;
import sunaba.core.Signal;

class OggPacketSequence extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('OggPacketSequence');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['OggPacketSequence', native];
        scriptLoader.call('loadScript', args);
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
