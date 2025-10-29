package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;

class CameraAttributes extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CameraAttributes');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['CameraAttributes', native];
        scriptLoader.call('loadScript', args);
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
