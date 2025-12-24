package sunaba.animation;

import sunaba.spatial.SpatialTransform;
import sunaba.core.native.NativeObject;
import sunaba.core.Dictionary;
import sunaba.core.TypedArray;
import sunaba.core.ArrayList;

class AnimationPlayer extends AnimationMixer {
    public var assignedAnimation(get, set): String;
	function get_assignedAnimation():String {
		return node.native.get("assigned_animation");
	}
	function set_assignedAnimation(value:String):String {
		node.native.set("assigned_animation", value);
		return value;
	}

	public var autoplay(get, set): String;
	function get_autoplay():String {
		return node.native.get("autoplay");
	}
	function set_autoplay(value:String):String {
		node.native.set("autoplay", value);
		return value;
	}

	public var currentAnimation(get, set): String;
	function get_currentAnimation():String {
		return node.native.get("current_animation");
	}
	function set_currentAnimation(value:String):String {
		node.native.set("current_animation", value);
		return value;
	}

	public var currentAnimationLength(get, set): Float;
	function get_currentAnimationLength():Float {
		return node.native.get("current_animation_length");
	}
	function set_currentAnimationLength(value:Float):Float {
		node.native.set("current_animation_length", value);
		return value;
	}

    public var currentAnimationPosition(get, set): Float;
	function get_currentAnimationPosition():Float {
		return node.native.get("current_animation_position");
	}
	function set_currentAnimationPosition(value:Float):Float {
		node.native.set("current_animation_position", value);
		return value;
	}

	public var movieQuitOnFinish(get, set): Bool;
	function get_movieQuitOnFinish():Bool {
		return node.native.get("movie_quit_on_finish");
	}
	function set_movieQuitOnFinish(value:Bool):Bool {
		node.native.set("movie_quit_on_finish", value);
		return value;
	}

	public var playbackAutoCapture(get, set): Bool;
	function get_playbackAutoCapture():Bool {
		return node.native.get("playback_auto_capture");
	}
	function set_playbackAutoCapture(value:Bool):Bool {
		node.native.set("playback_auto_capture", value);
		return value;
	}

	public var playbackAutoCaptureDuration(get, set): Float;
	function get_playbackAutoCaptureDuration():Float {
		return node.native.get("playback_auto_capture_duration");
	}
	function set_playbackAutoCaptureDuration(value:Float):Float {
		node.native.set("playback_auto_capture_duration", value);
		return value;
	}

	public var playbackAutoCaptureEaseType(get, set): Int;
	function get_playbackAutoCaptureEaseType():Int {
		return node.native.get("playback_auto_capture_ease_type");
	}
	function set_playbackAutoCaptureEaseType(value:Int):Int {
		node.native.set("playback_auto_capture_ease_type", value);
		return value;
	}

	public var playbackAutoCaptureTransitionType(get, set): Int;
	function get_playbackAutoCaptureTransitionType():Int {
		return node.native.get("playback_auto_capture_transition_type");
	}
	function set_playbackAutoCaptureTransitionType(value:Int):Int {
		node.native.set("playback_auto_capture_transition_type", value);
		return value;
	}

	public var playbackDefaultBlendTime(get, set): Float;
	function get_playbackDefaultBlendTime():Float {
		return node.native.get("playback_default_blend_time");
	}
	function set_playbackDefaultBlendTime(value:Float):Float {
		node.native.set("playback_default_blend_time", value);
		return value;
	}

	public var speedScale(get, set): Float;
	function get_speedScale():Float {
		return node.native.get("speed_scale");
	}
	function set_speedScale(value:Float):Float {
		node.native.set("speed_scale", value);
		return value;
	}

    public function animationGetNext(animationFrom: String): String {
        var args = new ArrayList();
        args.append(animationFrom);
        return node.native.call("animation_get_next", args);
    }

    public function animationSetNext(animationFrom: String, animationTo: String) {
        var args = new ArrayList();
        args.append(animationFrom);
        args.append(animationTo);
        node.native.call("animation_set_next", args);
    }

    public function clearQueue() {
        node.native.call("clear_queue", new ArrayList());
    }

    public function getBlendTime(animationFrom: String, animationTo: String): Float {
        var args = new ArrayList();
        args.append(animationFrom);
        args.append(animationTo);
        return node.native.call("get_blend_time", args);
    }

    public function getMethodCallMode(): Int {
        return node.native.call("get_method_call_mode", new ArrayList());
    }

    public function getPlayingSpeed(): Float {
        return node.native.call("get_playing_speed", new ArrayList());
    }

    public function getProcessCallback(): Int {
        return node.native.call("get_process_callback", new ArrayList());
    }

    public function getQueue(): TypedArray<String> {
        return node.native.call("get_queue", new ArrayList());
    }

    public function getRoot(): String {
        return node.native.call("get_root", new ArrayList());
    }

    public function getSectionEndTime(): Float {
        return node.native.call("get_section_end_time", new ArrayList());
    }

    public function getSectionStartTime(): Float {
        return node.native.call("get_section_start_time", new ArrayList());
    }

    public function hasSection(): Bool {
        return node.native.call("has_section", new ArrayList());
    }

    public function isPlaying(): Bool {
        return node.native.call("is_playing", new ArrayList());
    }

    public function pause() {
        node.native.call("pause", new ArrayList());
    }

    public function play(?name: String, ?customBlend: Float, ?customSpeed: Float, ?fromEnd: Bool) {
        var args = new ArrayList();
        if (name != null) {
            args.append(name);
        }
        if (customBlend != null) {
            args.append(customBlend);
        }
        if (customSpeed != null) {
            args.append(customSpeed);
        }
        if (fromEnd != null) {
            args.append(fromEnd);
        }
        node.native.call("play", args);
    }

    public function playBackwards(?name: String, ?customBlend: Float) {
        var args = new ArrayList();
        if (name != null) {
            args.append(name);
        }
        if (customBlend != null) {
            args.append(customBlend);
        }
        node.native.call("play_backwards", args);
    }

    public function playSection(?name: String, ?startTime: Float, ?endTime: Float, ?customBlend: Float, ?customSpeed: Float, ?fromEnd: Bool) {
        var args = new ArrayList();
        if (name != null) {
            args.append(name);
        }
        if (startTime != null) {
            args.append(startTime);
        }
        if (endTime != null) {
            args.append(endTime);
        }
        if (customBlend != null) {
            args.append(customBlend);
        }
        if (customSpeed != null) {
            args.append(customSpeed);
        }
        if (fromEnd != null) {
            args.append(fromEnd);
        }
        node.native.call("play_section", args);
    }
 
    public function playSectionBackwards(?name: String, ?startTime: Float, ?endTime: Float, ?customBlend: Float) {
        var args = new ArrayList();
        if (name != null) {
            args.append(name);
        }
        if (startTime != null) {
            args.append(startTime);
        }
        if (endTime != null) {
            args.append(endTime);
        }
        if (customBlend != null) {
            args.append(customBlend);
        }
        node.native.call("play_backwards", args);
    }

    public function playSectionWithMarkers(?name: String, ?startMarker: String, ?endMarker: String, ?customBlend: Float, ?customSpeed: Float, ?fromEnd: Bool) {
        var args = new ArrayList();
        if (name != null) {
            args.append(name);
        }
        if (startMarker != null) {
            args.append(startMarker);
        }
        if (endMarker != null) {
            args.append(endMarker);
        }
        if (customBlend != null) {
            args.append(customBlend);
        }
        if (customSpeed != null) {
            args.append(customSpeed);
        }
        if (fromEnd != null) {
            args.append(fromEnd);
        }
        node.native.call("play_section", args);
    }

    public function playSectionWithMarkersBackwards(?name: String, ?startMarker: String, ?endMarker: String, ?customBlend: Float) {
        var args = new ArrayList();
        if (name != null) {
            args.append(name);
        }
        if (startMarker != null) {
            args.append(startMarker);
        }
        if (endMarker != null) {
            args.append(endMarker);
        }
        if (customBlend != null) {
            args.append(customBlend);
        }
        node.native.call("play_backwards", args);
    }

    public function playWithCapture(?name: String, ?duration: Float, ?customBlend: Float, ?customSpeed: Float, ?fromEnd: Bool, ?transType: Int, ?easeType: Int) {
        var args = new ArrayList();
        if (name != null) {
            args.append(name);
        }
        if (duration != null) {
            args.append(duration);
        }
        if (customBlend != null) {
            args.append(customBlend);
        }
        if (customSpeed != null) {
            args.append(customSpeed);
        }
        if (fromEnd != null) {
            args.append(fromEnd);
        }
        if (transType != null) {
            args.append(transType);
        }
        if (easeType != null) {
            args.append(easeType);
        }
        node.native.call("play_with_capture", args);
    }

    public function queue(name: String) {
        var args = new ArrayList();
        if (name != null) {
            args.append(name);
        }
        node.native.call("queue", args);
    }

    public function resetSection() {
        node.native.call("reset_section", new ArrayList());
    }

    public function seek(seconds: Float, ?update: Bool, ?updateOnly: Bool) {
        var args = new ArrayList();
        args.append(seconds);
        if (update != null) {
            args.append(update);
        }
        if (updateOnly != null) {
            args.append(updateOnly);
        }
        node.native.call("seek", args);
    }

    public function setBlendTime(animationFrom: String, animationTo: String, sec: Float) {
        var args = new ArrayList();
        args.append(animationFrom);
        args.append(animationTo);
        args.append(sec);
        node.native.call("set_blend_time", args);
    }

    public function setMethodCallMode(mode: Int) {
        var args = new ArrayList();
        args.append(mode);
        node.native.call("set_method_call_mode", args);
    }

    public function setProcessCallback(mode: Int) {
        var args = new ArrayList();
        args.append(mode);
        node.native.call("set_process_callback", args);
    }

    public function setRoot(path: String) {
        var args = new ArrayList();
        args.append(path);
        node.native.call("set_root", args);
    }

    public function setSection(?startTime: Float, ?endTime: Float) {
        var args = new ArrayList();
        if (startTime != null) {
            args.append(startTime);
        }
        if (endTime != null) {
            args.append(endTime);
        }
        node.native.call("set_section", args);
    }

    public function setSectionWithMarkers(?startMarker: String, ?endMarker: String) {
        var args = new ArrayList();
        if (startMarker != null) {
            args.append(startMarker);
        }
        if (endMarker != null) {
            args.append(endMarker);
        }
        node.native.call("set_section", args);
    }

    public function stop(?keepState: Bool) {
       var args = new ArrayList();
       args.append(keepState);
       node.native.call("stop", args); 
    }

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("assignedAnimation", assignedAnimation);
        data.set("autoplay", autoplay);
        data.set("currentAnimation", currentAnimation);
        data.set("currentAnimationLength", currentAnimationLength);
        data.set("currentAnimationPosition", currentAnimationPosition);
        data.set("movieQuitOnFinish", movieQuitOnFinish);
        data.set("playbackAutoCapture", playbackAutoCapture);
        data.set("playbackAutoCaptureDuration", playbackAutoCaptureDuration);
        data.set("playbackAutoCaptureEaseType", playbackAutoCaptureEaseType);
        data.set("playbackAutoCaptureTransitionType", playbackAutoCaptureTransitionType);
        data.set("playbackDefaultBlendTime", playbackDefaultBlendTime);
        data.set("speedScale", speedScale);

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        assignedAnimation = data.get("assignedAnimation");
        autoplay = data.get("autoplay");
        currentAnimation = data.get("currentAnimation");
        currentAnimationLength = data.get("currentAnimationLength");
        currentAnimationPosition = data.get("currentAnimationPosition");
        movieQuitOnFinish = data.get("movieQuitOnFinish");
        playbackAutoCapture = data.get("playbackAutoCapture");
        playbackAutoCaptureDuration = data.get("playbackAutoCaptureDuration");
        playbackAutoCaptureEaseType = data.get("playbackAutoCaptureEaseType");
        playbackAutoCaptureTransitionType = data.get("playbackAutoCaptureTransitionType");
        playbackDefaultBlendTime = data.get("playbackDefaultBlendTime");
        speedScale = data.get("speedScale");
    }

    public override function onInit() {
        node = new Node(new NativeObject("AnimationPlayer"));
        
        var transform = getComponent(SpatialTransform);
        if (transform != null) {
            transform.node.addChild(node);
        }
    }

    public override function onStart() {
        if (node.getParent().isNull()) {
            var transform = getComponent(SpatialTransform);
            if (transform != null) {
                transform.node.addChild(node);
            }
        }
    }
}
