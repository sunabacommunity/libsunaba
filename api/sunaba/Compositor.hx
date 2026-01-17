package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class Compositor extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('Compositor');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Compositor', native];
        scriptLoader.call('loadScript', args);
    }

    public var compositorEffects(get, set): ArrayList;
    function get_compositorEffects(): ArrayList {
        return native.get('compositor_effects');
    }
    function set_compositorEffects(value: ArrayList): ArrayList {
      native.set('compositor_effects', value);
        return value;
    }


}
