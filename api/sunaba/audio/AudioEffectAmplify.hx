package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class AudioEffectAmplify extends AudioEffect {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('AudioEffectAmplify');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioEffectAmplify', native];
        scriptLoader.call('loadScript', args);
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
