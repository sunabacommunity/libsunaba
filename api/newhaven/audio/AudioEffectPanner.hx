package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class AudioEffectPanner extends AudioEffect {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioEffectPanner');
        }
        native = _native;
    }

    public var pan(get, set): Float;
    function get_pan(): Float {
        return native.get('pan');
    }
    function set_pan(value: Float): Float {
      native.set('pan', value);
        return value;
    }


}
