package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class CanvasItemMaterial extends Material {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CanvasItemMaterial');
        }
        native = _native;
    }

    public var blendMode(get, set): Int;
    function get_blendMode(): Int {
        return native.get('blend_mode');
    }
    function set_blendMode(value: Int): Int {
      native.set('blend_mode', value);
        return value;
    }
    public var lightMode(get, set): Int;
    function get_lightMode(): Int {
        return native.get('light_mode');
    }
    function set_lightMode(value: Int): Int {
      native.set('light_mode', value);
        return value;
    }
    public var particlesAnimHFrames(get, set): Int;
    function get_particlesAnimHFrames(): Int {
        return native.get('particles_anim_h_frames');
    }
    function set_particlesAnimHFrames(value: Int): Int {
      native.set('particles_anim_h_frames', value);
        return value;
    }
    public var particlesAnimLoop(get, set): Bool;
    function get_particlesAnimLoop(): Bool {
        return native.get('particles_anim_loop');
    }
    function set_particlesAnimLoop(value: Bool): Bool {
      native.set('particles_anim_loop', value);
        return value;
    }
    public var particlesAnimVFrames(get, set): Int;
    function get_particlesAnimVFrames(): Int {
        return native.get('particles_anim_v_frames');
    }
    function set_particlesAnimVFrames(value: Int): Int {
      native.set('particles_anim_v_frames', value);
        return value;
    }
    public var particlesAnimation(get, set): Bool;
    function get_particlesAnimation(): Bool {
        return native.get('particles_animation');
    }
    function set_particlesAnimation(value: Bool): Bool {
      native.set('particles_animation', value);
        return value;
    }


}
