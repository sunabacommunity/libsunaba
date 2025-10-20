package newhaven;

enum abstract EnvironmentSdfgiFramesToUpdateLight(Int) from Int to Int {
	var in1Frame = cast 0;
	var in2Frames = cast 1;
	var in4Frames = cast 2;
	var in8Frames = cast 3;
	var in16Frames = cast 4;
	var max = cast 5;
	public static var values = [in1Frame, in2Frames, in4Frames, in8Frames, in16Frames, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "in1Frame": cast 0;
			case "in2Frames": cast 1;
			case "in4Frames": cast 2;
			case "in8Frames": cast 3;
			case "in16Frames": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
