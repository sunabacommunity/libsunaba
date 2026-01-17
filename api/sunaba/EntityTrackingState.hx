package sunaba;

enum abstract EntityTrackingState(Int) from Int to Int {
	var stopped = cast 1;
	var paused = cast 2;
	var tracking = cast 3;
	public static var values = [stopped, paused, tracking];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "stopped": cast 1;
			case "paused": cast 2;
			case "tracking": cast 3;
			case _: null;
		}
	}
}
