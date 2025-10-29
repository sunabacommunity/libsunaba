package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Resource;
import sunaba.Material;
import sunaba.core.Signal;

class Sky extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Sky');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Sky', native];
        scriptLoader.call('loadScript', args);
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
