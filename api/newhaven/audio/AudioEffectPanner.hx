package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

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
