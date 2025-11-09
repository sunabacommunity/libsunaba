package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class AudioStreamPolyphonic extends AudioStream {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('AudioStreamPolyphonic');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioStreamPolyphonic', native];
        scriptLoader.call('loadScript', args);
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
