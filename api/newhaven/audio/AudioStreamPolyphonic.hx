package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class AudioStreamPolyphonic extends AudioStream {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamPolyphonic');
        }
        native = _native;
    }

    public var polyphony(get, set): Int;
    function get_polyphony(): Int {
        return native.get('polyphony');
    }
    function set_polyphony(value: Int): Int {
      native.set('polyphony', value);
        return value;
    }

}
