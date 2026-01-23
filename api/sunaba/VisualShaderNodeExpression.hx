package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeExpression extends VisualShaderNodeGroupBase {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeExpression');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeExpression', native];
        scriptLoader.call('loadScript', args);
    }

    public var expression(get, set): String;
    function get_expression(): String {
        return native.get('expression');
    }
    function set_expression(value: String): String {
      native.set('expression', value);
        return value;
    }


}
