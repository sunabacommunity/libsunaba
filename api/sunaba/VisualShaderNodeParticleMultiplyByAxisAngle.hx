package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeParticleMultiplyByAxisAngle extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeParticleMultiplyByAxisAngle');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeParticleMultiplyByAxisAngle', native];
        scriptLoader.call('loadScript', args);
    }

    public var degreesMode(get, set): Bool;
    function get_degreesMode(): Bool {
        return native.get('degrees_mode');
    }
    function set_degreesMode(value: Bool): Bool {
      native.set('degrees_mode', value);
        return value;
    }


}
