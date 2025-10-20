package newhaven.spatial.xr;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.TypedArray;

class OpenXRAction extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('OpenXRAction');
        }
        native = _native;
    }

    public var actionType(get, set): Int;
    function get_actionType(): Int {
        return native.get('action_type');
    }
    function set_actionType(value: Int): Int {
      native.set('action_type', value);
        return value;
    }
    public var localizedName(get, set): String;
    function get_localizedName(): String {
        return native.get('localized_name');
    }
    function set_localizedName(value: String): String {
      native.set('localized_name', value);
        return value;
    }
    public var toplevelPaths(get, set): TypedArray<String>;
    function get_toplevelPaths(): TypedArray<String> {
        return native.get('toplevel_paths');
    }
    function set_toplevelPaths(value: TypedArray<String>): TypedArray<String> {
      native.set('toplevel_paths', value);
        return value;
    }

}
