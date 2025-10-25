package sunaba;

enum abstract TweenPauseMode(Int) from Int to Int {
	var bound = cast 0;
	var stop = cast 1;
	var process = cast 2;
	public static var values = [bound, stop, process];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bound": cast 0;
			case "stop": cast 1;
			case "process": cast 2;
			case _: null;
		}
	}
}
