package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeParticleAccelerator extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeParticleAccelerator');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeParticleAccelerator', native];
        scriptLoader.call('loadScript', args);
    }

    public var mode(get, set): Int;
    function get_mode(): Int {
        return native.get('mode');
    }
    function set_mode(value: Int): Int {
      native.set('mode', value);
        return value;
    }


}
