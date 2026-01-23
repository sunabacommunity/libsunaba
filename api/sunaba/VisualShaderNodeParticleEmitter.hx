package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeParticleEmitter extends VisualShaderNode {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeParticleEmitter');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeParticleEmitter', native];
        scriptLoader.call('loadScript', args);
    }

    public var mode2d(get, set): Bool;
    function get_mode2d(): Bool {
        return native.get('mode_2d');
    }
    function set_mode2d(value: Bool): Bool {
      native.set('mode_2d', value);
        return value;
    }


}
