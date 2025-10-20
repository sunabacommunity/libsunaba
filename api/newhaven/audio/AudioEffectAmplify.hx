package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class AudioEffectAmplify extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectAmplify');
        }
        native = _native;
    }

    public var volumeDb(get, set): Float;
    function get_volumeDb(): Float {
        return native.get('volume_db');
    }
    function set_volumeDb(value: Float): Float {
      native.set('volume_db', value);
        return value;
    }
    public var volumeLinear(get, set): Float;
    function get_volumeLinear(): Float {
        return native.get('volume_linear');
    }
    function set_volumeLinear(value: Float): Float {
      native.set('volume_linear', value);
        return value;
    }


}
