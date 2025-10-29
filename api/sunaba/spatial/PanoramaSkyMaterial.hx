package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Material;
import sunaba.Texture2D;
import sunaba.core.Signal;

class PanoramaSkyMaterial extends Material {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PanoramaSkyMaterial');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['PanoramaSkyMaterial', native];
        scriptLoader.call('loadScript', args);
    }

    public var energyMultiplier(get, set): Float;
    function get_energyMultiplier(): Float {
        return native.get('energy_multiplier');
    }
    function set_energyMultiplier(value: Float): Float {
      native.set('energy_multiplier', value);
        return value;
    }
    public var filter(get, set): Bool;
    function get_filter(): Bool {
        return native.get('filter');
    }
    function set_filter(value: Bool): Bool {
      native.set('filter', value);
        return value;
    }
    public var panorama(get, set): Texture2D;
    function get_panorama(): Texture2D {
        var ref: NativeReference = native.get('panorama');
        return new Texture2D(ref);
    }
    function set_panorama(value: Texture2D): Texture2D {
      native.set('panorama', value.native);
        return value;
    }


}
