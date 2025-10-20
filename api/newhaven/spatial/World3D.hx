package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.Environment;

class World3D extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('World3D');
        }
        native = _native;
    }

    public var cameraAttributes(get, set): CameraAttributes;
    function get_cameraAttributes(): CameraAttributes {
        var ref: NativeReference = native.get('camera_attributes');
        return new CameraAttributes(ref);
    }
    function set_cameraAttributes(value: CameraAttributes): CameraAttributes {
      native.set('camera_attributes', value.native);
        return value;
    }
    public var environment(get, set): Environment;
    function get_environment(): Environment {
        var ref: NativeReference = native.get('environment');
        return new Environment(ref);
    }
    function set_environment(value: Environment): Environment {
      native.set('environment', value.native);
        return value;
    }
    public var fallbackEnvironment(get, set): Environment;
    function get_fallbackEnvironment(): Environment {
        var ref: NativeReference = native.get('fallback_environment');
        return new Environment(ref);
    }
    function set_fallbackEnvironment(value: Environment): Environment {
      native.set('fallback_environment', value.native);
        return value;
    }
    public var navigationMap(get, set): Int;
    function get_navigationMap(): Int {
        return native.get('navigation_map');
    }
    function set_navigationMap(value: Int): Int {
      native.set('navigation_map', value);
        return value;
    }
    public var scenario(get, set): Int;
    function get_scenario(): Int {
        return native.get('scenario');
    }
    function set_scenario(value: Int): Int {
      native.set('scenario', value);
        return value;
    }
    public var space(get, set): Int;
    function get_space(): Int {
        return native.get('space');
    }
    function set_space(value: Int): Int {
      native.set('space', value);
        return value;
    }

}
