package sunaba;
import sunaba.core.native.NativeObject;
import sunaba.core.Signal;
import sunaba.core.Signal.Signal.createFromObject;
import sunaba.core.ArrayList;

class Timer extends Node {
	public override function nativeInit(?_native: NativeObject) {
		if (_native == null) {
			_native = new NativeObject('Timer');
		}
		this.native = _native;
	}

	public var autostart(get, set): Bool;
	function get_autostart():Bool {
		return native.get("autostart");
	}
	function set_autostart(value:Bool):Bool {
		native.set("autostart", value);
		return value;
	}

	public var ignoreTimeScale(get, set): Bool;
	function get_ignoreTimeScale():Bool {
		return native.get("ignore_time_scale");
	}
	function set_ignoreTimeScale(value:Bool):Bool {
		native.set("ignore_time_scale", value);
		return value;
	}

	public var oneShot(get, set): Bool;
	function get_oneShot():Bool {
		return native.get("one_shot");
	}
	function set_oneShot(value:Bool):Bool {
		native.set("one_shot", value);
		return value;
	}

	public var paused(get, set): Bool;
	function get_paused():Bool {
		return native.get("paused");
	}
	function set_paused(value:Bool):Bool {
		native.set("paused", value);
		return value;
	}

	public var processCallback(get, set): Int;
	function get_processCallback():Int {
		return native.get("process_callback");
	}
	function set_processCallback(value:Int):Int {
		native.set("process_callback", value);
		return value;
	}

	public var timeLeft(get, set): Float;
	function get_timeLeft():Float {
		return native.get("time_left");
	}
	function set_timeLeft(value:Float):Float {
		native.set("time_left", value);
		return value;
	}

	public var waitTime(get, set): Float;
	function get_waitTime():Float {
		return native.get("wait_time");
	}
	function set_waitTime(value:Float):Float {
		native.set("wait_time", value);
		return value;
	}

	private var _timeout: Signal;
	public var timeout(get, default): Signal;
	function get_timeout(): Signal {
		if (_timeout == null) {
			_timeout = Signal.createFromObject(native, 'timeout');
		}
		return _timeout;
	}

	public function isStopped(): Bool {
		return native.call("is_stopped", new ArrayList());
	}

	public function start(timeSec: Float = -1) {
		var args = new ArrayList();
		if (timeSec != null) {
			args.append(timeSec);
		}
		native.call("start", args);
	}

	public function stop() {
		native.call("stop", new ArrayList());
	}
}
