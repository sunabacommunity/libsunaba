package sunaba;

enum abstract EnvironmentFogMode(Int) from Int to Int {
	var exponential = cast 0;
	var depth = cast 1;
	public static var values = [exponential, depth];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "exponential": cast 0;
			case "depth": cast 1;
			case _: null;
		}
	}
}
