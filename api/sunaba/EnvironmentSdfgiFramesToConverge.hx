package sunaba;

enum abstract EnvironmentSdfgiFramesToConverge(Int) from Int to Int {
	var in5Frames = cast 0;
	var in10Frames = cast 1;
	var in15Frames = cast 2;
	var in20Frames = cast 3;
	var in25Frames = cast 4;
	var in30Frames = cast 5;
	var max = cast 6;
	public static var values = [in5Frames, in10Frames, in15Frames, in20Frames, in25Frames, in30Frames, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "in5Frames": cast 0;
			case "in10Frames": cast 1;
			case "in15Frames": cast 2;
			case "in20Frames": cast 3;
			case "in25Frames": cast 4;
			case "in30Frames": cast 5;
			case "max": cast 6;
			case _: null;
		}
	}
}
