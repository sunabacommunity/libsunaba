package newhaven;

enum abstract TargetRayMode(Int) from Int to Int {
	var unknown = cast 0;
	var gaze = cast 1;
	var trackedPointer = cast 2;
	var screen = cast 3;
	public static var values = [unknown, gaze, trackedPointer, screen];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unknown": cast 0;
			case "gaze": cast 1;
			case "trackedPointer": cast 2;
			case "screen": cast 3;
			case _: null;
		}
	}
}
