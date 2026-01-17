package sunaba;

enum abstract BlendModeEnum(Int) from Int to Int {
	var interpolated = cast 0;
	var discrete = cast 1;
	var discreteCarry = cast 2;
	public static var values = [interpolated, discrete, discreteCarry];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "interpolated": cast 0;
			case "discrete": cast 1;
			case "discreteCarry": cast 2;
			case _: null;
		}
	}
}
