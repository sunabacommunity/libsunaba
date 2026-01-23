package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeCurveXYZTexture extends VisualShaderNodeResizableBase {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeCurveXYZTexture');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeCurveXYZTexture', native];
        scriptLoader.call('loadScript', args);
    }

    public var texture(get, set): CurveXYZTexture;
    function get_texture(): CurveXYZTexture {
        var ref: NativeReference = native.get('texture');
        return new CurveXYZTexture(ref);
    }
    function set_texture(value: CurveXYZTexture): CurveXYZTexture {
      native.set('texture', value.native);
        return value;
    }


}
