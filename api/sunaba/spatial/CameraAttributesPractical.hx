package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class CameraAttributesPractical extends CameraAttributes {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('CameraAttributesPractical');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['CameraAttributesPractical', native];
        scriptLoader.call('loadScript', args);
    }

    public var autoExposureMaxSensitivity(get, set): Float;
    function get_autoExposureMaxSensitivity(): Float {
        return native.get('auto_exposure_max_sensitivity');
    }
    function set_autoExposureMaxSensitivity(value: Float): Float {
      native.set('auto_exposure_max_sensitivity', value);
        return value;
    }
    public var autoExposureMinSensitivity(get, set): Float;
    function get_autoExposureMinSensitivity(): Float {
        return native.get('auto_exposure_min_sensitivity');
    }
    function set_autoExposureMinSensitivity(value: Float): Float {
      native.set('auto_exposure_min_sensitivity', value);
        return value;
    }
    public var dofBlurAmount(get, set): Float;
    function get_dofBlurAmount(): Float {
        return native.get('dof_blur_amount');
    }
    function set_dofBlurAmount(value: Float): Float {
      native.set('dof_blur_amount', value);
        return value;
    }
    public var dofBlurFarDistance(get, set): Float;
    function get_dofBlurFarDistance(): Float {
        return native.get('dof_blur_far_distance');
    }
    function set_dofBlurFarDistance(value: Float): Float {
      native.set('dof_blur_far_distance', value);
        return value;
    }
    public var dofBlurFarEnabled(get, set): Bool;
    function get_dofBlurFarEnabled(): Bool {
        return native.get('dof_blur_far_enabled');
    }
    function set_dofBlurFarEnabled(value: Bool): Bool {
      native.set('dof_blur_far_enabled', value);
        return value;
    }
    public var dofBlurFarTransition(get, set): Float;
    function get_dofBlurFarTransition(): Float {
        return native.get('dof_blur_far_transition');
    }
    function set_dofBlurFarTransition(value: Float): Float {
      native.set('dof_blur_far_transition', value);
        return value;
    }
    public var dofBlurNearDistance(get, set): Float;
    function get_dofBlurNearDistance(): Float {
        return native.get('dof_blur_near_distance');
    }
    function set_dofBlurNearDistance(value: Float): Float {
      native.set('dof_blur_near_distance', value);
        return value;
    }
    public var dofBlurNearEnabled(get, set): Bool;
    function get_dofBlurNearEnabled(): Bool {
        return native.get('dof_blur_near_enabled');
    }
    function set_dofBlurNearEnabled(value: Bool): Bool {
      native.set('dof_blur_near_enabled', value);
        return value;
    }
    public var dofBlurNearTransition(get, set): Float;
    function get_dofBlurNearTransition(): Float {
        return native.get('dof_blur_near_transition');
    }
    function set_dofBlurNearTransition(value: Float): Float {
      native.set('dof_blur_near_transition', value);
        return value;
    }


}
