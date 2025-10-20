package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.Material;

class Sky extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Sky');
        }
        native = _native;
    }

    public var processMode(get, set): Int;
    function get_processMode(): Int {
        return native.get('process_mode');
    }
    function set_processMode(value: Int): Int {
      native.set('process_mode', value);
        return value;
    }
    public var radianceSize(get, set): Int;
    function get_radianceSize(): Int {
        return native.get('radiance_size');
    }
    function set_radianceSize(value: Int): Int {
      native.set('radiance_size', value);
        return value;
    }
    public var skyMaterial(get, set): Material;
    function get_skyMaterial(): Material {
        var ref: NativeReference = native.get('sky_material');
        return new Material(ref);
    }
    function set_skyMaterial(value: Material): Material {
      native.set('sky_material', value.native);
        return value;
    }

}
