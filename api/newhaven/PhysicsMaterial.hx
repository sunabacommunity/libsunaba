package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class PhysicsMaterial extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PhysicsMaterial');
        }
        native = _native;
    }

    public var absorbent(get, set): Bool;
    function get_absorbent(): Bool {
        return native.get('absorbent');
    }
    function set_absorbent(value: Bool): Bool {
      native.set('absorbent', value);
        return value;
    }
    public var bounce(get, set): Float;
    function get_bounce(): Float {
        return native.get('bounce');
    }
    function set_bounce(value: Float): Float {
      native.set('bounce', value);
        return value;
    }
    public var friction(get, set): Float;
    function get_friction(): Float {
        return native.get('friction');
    }
    function set_friction(value: Float): Float {
      native.set('friction', value);
        return value;
    }
    public var rough(get, set): Bool;
    function get_rough(): Bool {
        return native.get('rough');
    }
    function set_rough(value: Bool): Bool {
      native.set('rough', value);
        return value;
    }

}
