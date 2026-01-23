package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeBillboard extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeBillboard');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeBillboard', native];
        scriptLoader.call('loadScript', args);
    }

    public var billboardType(get, set): Int;
    function get_billboardType(): Int {
        return native.get('billboard_type');
    }
    function set_billboardType(value: Int): Int {
      native.set('billboard_type', value);
        return value;
    }
    public var keepScale(get, set): Bool;
    function get_keepScale(): Bool {
        return native.get('keep_scale');
    }
    function set_keepScale(value: Bool): Bool {
      native.set('keep_scale', value);
        return value;
    }


}
