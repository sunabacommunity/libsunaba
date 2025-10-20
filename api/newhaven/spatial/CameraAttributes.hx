package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.Signal;

class CameraAttributes extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CameraAttributes');
        }
        native = _native;
    }

    public var autoExposureEnabled(get, set): Bool;
    function get_autoExposureEnabled(): Bool {
        return native.get('auto_exposure_enabled');
    }
    function set_autoExposureEnabled(value: Bool): Bool {
      native.set('auto_exposure_enabled', value);
        return value;
    }
    public var autoExposureScale(get, set): Float;
    function get_autoExposureScale(): Float {
        return native.get('auto_exposure_scale');
    }
    function set_autoExposureScale(value: Float): Float {
      native.set('auto_exposure_scale', value);
        return value;
    }
    public var autoExposureSpeed(get, set): Float;
    function get_autoExposureSpeed(): Float {
        return native.get('auto_exposure_speed');
    }
    function set_autoExposureSpeed(value: Float): Float {
      native.set('auto_exposure_speed', value);
        return value;
    }
    public var exposureMultiplier(get, set): Float;
    function get_exposureMultiplier(): Float {
        return native.get('exposure_multiplier');
    }
    function set_exposureMultiplier(value: Float): Float {
      native.set('exposure_multiplier', value);
        return value;
    }
    public var exposureSensitivity(get, set): Float;
    function get_exposureSensitivity(): Float {
        return native.get('exposure_sensitivity');
    }
    function set_exposureSensitivity(value: Float): Float {
      native.set('exposure_sensitivity', value);
        return value;
    }


}
