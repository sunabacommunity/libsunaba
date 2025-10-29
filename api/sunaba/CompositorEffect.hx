package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class CompositorEffect extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CompositorEffect');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['CompositorEffect', native];
        scriptLoader.call('loadScript', args);
    }

    public var accessResolvedColor(get, set): Bool;
    function get_accessResolvedColor(): Bool {
        return native.get('access_resolved_color');
    }
    function set_accessResolvedColor(value: Bool): Bool {
      native.set('access_resolved_color', value);
        return value;
    }
    public var accessResolvedDepth(get, set): Bool;
    function get_accessResolvedDepth(): Bool {
        return native.get('access_resolved_depth');
    }
    function set_accessResolvedDepth(value: Bool): Bool {
      native.set('access_resolved_depth', value);
        return value;
    }
    public var effectCallbackType(get, set): Int;
    function get_effectCallbackType(): Int {
        return native.get('effect_callback_type');
    }
    function set_effectCallbackType(value: Int): Int {
      native.set('effect_callback_type', value);
        return value;
    }
    public var enabled(get, set): Bool;
    function get_enabled(): Bool {
        return native.get('enabled');
    }
    function set_enabled(value: Bool): Bool {
      native.set('enabled', value);
        return value;
    }
    public var needsMotionVectors(get, set): Bool;
    function get_needsMotionVectors(): Bool {
        return native.get('needs_motion_vectors');
    }
    function set_needsMotionVectors(value: Bool): Bool {
      native.set('needs_motion_vectors', value);
        return value;
    }
    public var needsNormalRoughness(get, set): Bool;
    function get_needsNormalRoughness(): Bool {
        return native.get('needs_normal_roughness');
    }
    function set_needsNormalRoughness(value: Bool): Bool {
      native.set('needs_normal_roughness', value);
        return value;
    }
    public var needsSeparateSpecular(get, set): Bool;
    function get_needsSeparateSpecular(): Bool {
        return native.get('needs_separate_specular');
    }
    function set_needsSeparateSpecular(value: Bool): Bool {
      native.set('needs_separate_specular', value);
        return value;
    }


}
