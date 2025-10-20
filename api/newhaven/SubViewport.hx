package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector2i;
import newhaven.core.Signal;

class SubViewport extends Viewport {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('SubViewport');
        }
        native = _native;
    }

    public var renderTargetClearMode(get, set): Int;
    function get_renderTargetClearMode(): Int {
        return native.get('render_target_clear_mode');
    }
    function set_renderTargetClearMode(value: Int): Int {
      native.set('render_target_clear_mode', value);
        return value;
    }
    public var renderTargetUpdateMode(get, set): Int;
    function get_renderTargetUpdateMode(): Int {
        return native.get('render_target_update_mode');
    }
    function set_renderTargetUpdateMode(value: Int): Int {
      native.set('render_target_update_mode', value);
        return value;
    }
    public var size(get, set): Vector2i;
    function get_size(): Vector2i {
        return native.get('size');
    }
    function set_size(value: Vector2i): Vector2i {
      native.set('size', value);
        return value;
    }
    public var size2dOverride(get, set): Vector2i;
    function get_size2dOverride(): Vector2i {
        return native.get('size_2d_override');
    }
    function set_size2dOverride(value: Vector2i): Vector2i {
      native.set('size_2d_override', value);
        return value;
    }
    public var size2dOverrideStretch(get, set): Bool;
    function get_size2dOverrideStretch(): Bool {
        return native.get('size_2d_override_stretch');
    }
    function set_size2dOverrideStretch(value: Bool): Bool {
      native.set('size_2d_override_stretch', value);
        return value;
    }


}
