package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class CameraAttributesPhysical extends CameraAttributes {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CameraAttributesPhysical');
        }
        native = _native;
    }

    public var autoExposureMaxExposureValue(get, set): Float;
    function get_autoExposureMaxExposureValue(): Float {
        return native.get('auto_exposure_max_exposure_value');
    }
    function set_autoExposureMaxExposureValue(value: Float): Float {
      native.set('auto_exposure_max_exposure_value', value);
        return value;
    }
    public var autoExposureMinExposureValue(get, set): Float;
    function get_autoExposureMinExposureValue(): Float {
        return native.get('auto_exposure_min_exposure_value');
    }
    function set_autoExposureMinExposureValue(value: Float): Float {
      native.set('auto_exposure_min_exposure_value', value);
        return value;
    }
    public var exposureAperture(get, set): Float;
    function get_exposureAperture(): Float {
        return native.get('exposure_aperture');
    }
    function set_exposureAperture(value: Float): Float {
      native.set('exposure_aperture', value);
        return value;
    }
    public var exposureShutterSpeed(get, set): Float;
    function get_exposureShutterSpeed(): Float {
        return native.get('exposure_shutter_speed');
    }
    function set_exposureShutterSpeed(value: Float): Float {
      native.set('exposure_shutter_speed', value);
        return value;
    }
    public var frustumFar(get, set): Float;
    function get_frustumFar(): Float {
        return native.get('frustum_far');
    }
    function set_frustumFar(value: Float): Float {
      native.set('frustum_far', value);
        return value;
    }
    public var frustumFocalLength(get, set): Float;
    function get_frustumFocalLength(): Float {
        return native.get('frustum_focal_length');
    }
    function set_frustumFocalLength(value: Float): Float {
      native.set('frustum_focal_length', value);
        return value;
    }
    public var frustumFocusDistance(get, set): Float;
    function get_frustumFocusDistance(): Float {
        return native.get('frustum_focus_distance');
    }
    function set_frustumFocusDistance(value: Float): Float {
      native.set('frustum_focus_distance', value);
        return value;
    }
    public var frustumNear(get, set): Float;
    function get_frustumNear(): Float {
        return native.get('frustum_near');
    }
    function set_frustumNear(value: Float): Float {
      native.set('frustum_near', value);
        return value;
    }


  public function getFov(): Float {
      var args = new ArrayList();
      return native.call('get_fov', args);
  }
}
