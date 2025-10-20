package newhaven;

enum abstract TangentMode(Int) from Int to Int {
	var free = cast 0;
	var linear = cast 1;
	var modeCount = cast 2;
	public static var values = [free, linear, modeCount];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "free": cast 0;
			case "linear": cast 1;
			case "modeCount": cast 2;
			case _: null;
		}
	}
}
