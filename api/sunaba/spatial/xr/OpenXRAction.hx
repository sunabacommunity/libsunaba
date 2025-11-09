package sunaba.spatial.xr;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.TypedArray;
import sunaba.core.Signal;

class OpenXRAction extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('OpenXRAction');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['OpenXRAction', native];
        scriptLoader.call('loadScript', args);
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
