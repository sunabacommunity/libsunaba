package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Material;
import newhaven.Texture2D;

class PanoramaSkyMaterial extends Material {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PanoramaSkyMaterial');
        }
        native = _native;
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
