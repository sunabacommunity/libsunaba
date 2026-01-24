package sunaba.audio;
import sunaba.core.Dictionary;

class AudioSource extends Behavior {
	private var node: AudioStreamPlayer;

	public var autoplay(get, set): Bool;
	function get_autoplay():Bool {
		return node.autoplay;
	}
	function set_autoplay(value:Bool):Bool {
		return node.autoplay = value;
	}

	public var bus(get, set): String;
	function get_bus():String {
		return node.bus;
	}
	function set_bus(value:String):String {
		return node.bus = value;
	}

	public var maxPolyphony(get, set): Int;
	function get_maxPolyphony():Int {
		return node.maxPolyphony;
	}
	function set_maxPolyphony(value:Int):Int {
		return node.maxPolyphony = value;
	}

	public var mixTarget(get, set): Int;
	function get_mixTarget():Int {
		return node.mixTarget;
	}
	function set_mixTarget(value:Int):Int {
		return node.mixTarget = value;
	}

	public var pitchScale(get, set): Float;
	function get_pitchScale():Float {
		return node.pitchScale;
	}
	function set_pitchScale(value:Float):Float {
		return node.pitchScale = value;
	}

	public var playbackType(get, set): Int;
	function get_playbackType():Int {
		return node.playbackType;
	}
	function set_playbackType(value:Int):Int {
		return node.playbackType = value;
	}

	public var playing(get, set): Bool;
	function get_playing():Bool {
		return node.playing;
	}
	function set_playing(value:Bool):Bool {
		return node.playing = value;
	}

	public var stream(get, set): AudioStream;
	function get_stream():AudioStream {
		return node.stream;
	}
	function set_stream(value:AudioStream):AudioStream {
		return node.stream = value;
	}

	public var streamPaused(get, set): Bool;
	function get_streamPaused():Bool {
		return node.streamPaused;
	}
	function set_streamPaused(value:Bool):Bool {
		return node.streamPaused = value;
	}

	public var volumeDb(get, set): Float;
	function get_volumeDb():Float {
		return node.volumeDb;
	}
	function set_volumeDb(value:Float):Float {
		return node.volumeDb = value;
	}

	public var volumeLinear(get, set): Float;
	function get_volumeLinear():Float {
		return node.volumeLinear;
	}
	function set_volumeLinear(value:Float):Float {
		return node.volumeLinear = value;
	}

	public function getPlaybackPosition(): Float {
		return node.getPlaybackPosition();
	}

	public function getStreamPlayback(): AudioStreamPlayback {
		return node.getStreamPlayback();
	}

	public function hasStreamPlayback(): Bool {
		return node.hasStreamPlayback();
	}

	public function play(fromPosition: Float = 0.0) {
		node.play(fromPosition);
	}

	public function seek(toPosition: Float) {
		node.seek(toPosition);
	}

	public function stop() {
		node.stop();
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("autoplay", autoplay);
		data.set("bus", bus);
		data.set("maxPolyphony", maxPolyphony);
		data.set("mixTarget", mixTarget);
		data.set("pitchScale", pitchScale);
		data.set("playbackType", playbackType);
		data.set("playing", playing);
		data.set("stream", DataUtils.varToDict(stream));
		data.set("streamPaused", streamPaused);
		data.set("volumeDb", volumeDb);
		data.set("volumeLinear", volumeLinear);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		autoplay = data.get("autoplay");
		bus = data.get("bus");
		maxPolyphony = data.get("maxPolyphony");
		mixTarget = data.get("mixTarget");
		pitchScale = data.get("pitchScale");
		playbackType = data.get("playbackType");
		playing = data.get("playing");
		stream = new AudioStream(DataUtils.dictToVar(data.get("stream"), entity.io));
		streamPaused =data.get("streamPaused");
		volumeDb = data.get("volumeDb");
		volumeLinear = data.get("volumeLinear");
	}

	public override function onInit() {
		node = new AudioStreamPlayer();
	}

	public override function onStart() {
		if (entity.node != null) {
			entity.node.addChild(node);
		}
		else {
			entity.node = node;
		}
	}
}
