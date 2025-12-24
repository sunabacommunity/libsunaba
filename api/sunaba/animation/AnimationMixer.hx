package sunaba.animation;

import sunaba.core.Quaternion;
import sunaba.core.Vector3;
import sunaba.core.TypedArray;
import sunaba.core.ArrayList;

class AnimationMixer extends Behavior {
    public var node: Node;

	public var active(get, set): Bool;
	function get_active():Bool {
		return node.native.get("active");
	}
	function set_active(value:Bool):Bool {
		node.native.set("active", value);
		return value;
	}

	public var audioMaxPolyphony(get, set): Int;
	function get_audioMaxPolyphony():Int {
		return node.native.get("audio_max_polyphony");
	}
	function set_audioMaxPolyphony(value:Int):Int {
		node.native.set("audio_max_polyphony", value);
		return value;
	}

	public var callbackModeDiscrete(get, set): Int;
	function get_callbackModeDiscrete():Int {
		return node.native.get("callback_mode_discrete");
	}
	function set_callbackModeDiscrete(value:Int):Int {
		node.native.set("callback_mode_discrete", value);
		return value;
	}

	public var callbackModeMethod(get, set): Int;
	function get_callbackModeMethod():Int {
		return node.native.get("callback_mode_method");
	}
	function set_callbackModeMethod(value:Int):Int {
		node.native.set("callback_mode_method", value);
		return value;
	}

	public var callbackModeProcess(get, set): Int;
	function get_callbackModeProcess():Int {
		return node.native.get("callback_mode_process");
	}
	function set_callbackModeProcess(value:Int):Int {
		node.native.set("callback_mode_process", value);
		return value;
	}

	public var deterministic(get, set): Bool;
	function get_deterministic():Bool {
		return node.native.get("deterministic");
	}
	function set_deterministic(value:Bool):Bool {
		node.native.set("deterministic", value);
		return value;
	}

	public var resetOnSave(get, set): Bool;
	function get_resetOnSave():Bool {
		return node.native.get("reset_on_save");
	}
	function set_resetOnSave(value:Bool):Bool {
		node.native.set("reset_on_save", value);
		return value;
	}

	public var rootMotionLocal(get, set): Bool;
	function get_rootMotionLocal():Bool {
		return node.native.get("root_motion_local");
	}
	function set_rootMotionLocal(value:Bool):Bool {
		node.native.set("root_motion_local", value);
		return value;
	}

	public var rootMotionTrack(get, set): String;

	function get_rootMotionTrack():String {
		return node.native.get("root_motion_track");
	}
	function set_rootMotionTrack(value:String):String {
		node.native.set("root_motion_track", value);
		return value;
	}

    public function addAnimationLibrary(name: String, library: AnimationLibrary): Int {
        var args = new ArrayList();
        args.append(name);
        args.append(library);
        return node.native.call("add_animation_library", args);
    }

    public function advance(delta: Float) {
        var args = new ArrayList();
        args.append(delta);
        node.native.call("advance", args);
    }

    public function capture(name: String, duration: Float, ?transType: Int, ?easeType: Int) {
        var args = new ArrayList();
        args.append(name);
        args.append(duration);
        if (transType != null) {
            args.append(transType);
        }
        if (easeType != null) {
            args.append(easeType);
        }
        node.native.call("capture", args);
    }

    public function clearCaches() {
        node.native.call("clear_caches", new ArrayList());
    }

    public function findAnimation(animation: Animation): String {
        var args = new ArrayList();
        args.append(animation);
        return node.native.call("find_animation", args);
    }

    public function findAnimationLibrary(animation: Animation): String {
        var args = new ArrayList();
        args.append(animation);
        return node.native.call("find_animation_library", args);
    }

    public function getAnimation(name: String): Animation {
        var args = new ArrayList();
        args.append(name);
        return new Animation(node.native.call("get_animation", args));
    }

	public function getAnimationLibrary(name: String) {
		var args = new ArrayList();
        args.append(name);
        return new Animation(node.native.call("get_animation_library", args));
	}

	public function getAnimationLibraryList(): ArrayList {
		return node.native.call("get_animation_library_list", new ArrayList());
	}

	public function getAnimationList(): TypedArray<String> {
		return node.native.call("get_animation_list", new ArrayList());
	}

	public function getRootMotionPosition(): Vector3 {
		return node.native.call("get_root_motion_position", new ArrayList());
	}

	public function getRootMotionPositionAccumulator(): Vector3 {
		return node.native.call("get_root_motion_position_accumulator", new ArrayList());
	}

	public function getRootMotionRotation(): Quaternion {
		return node.native.call("get_root_motion_rotation", new ArrayList());
	}

	public function getRootMotionRotationAccumulator(): Quaternion {
		return node.native.call("get_root_motion_rotation_accumulator", new ArrayList());
	}

	public function getRootMotionScale(): Vector3 {
		return node.native.call("get_root_motion_scale", new ArrayList());
	}

	public function getRootMotionScaleAccumulator(): Vector3 {
		return node.native.call("get_root_motion_scale_accumulator", new ArrayList());
	}

	public function hasAnimation(name: String): Bool {
		var args = new ArrayList();
		args.append(name);
		return node.native.call("has_animation", args);
	}

	public function hasAnimationLibrary(name: String): Bool {
		var args = new ArrayList();
		args.append(name);
		return node.native.call("has_animation_library", args);
	}

	public function removeAnimationLibrary(name: String): Void {
		var args = new ArrayList();
		args.append(name);
		node.native.call("remove_animation_library", args);
	}

	public function renameAnimationLibrary(name: String, newname: String): Void {
		var args = new ArrayList();
		args.append(name);
		args.append(newname);
		node.native.call("remove_animation_library", args);
	}
}
