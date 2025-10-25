package sunaba;

enum abstract InterpolationType(Int) from Int to Int {
	var nearest = cast 0;
	var linear = cast 1;
	var cubic = cast 2;
	var linearAngle = cast 3;
	var cubicAngle = cast 4;
	public static var values = [nearest, linear, cubic, linearAngle, cubicAngle];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "nearest": cast 0;
			case "linear": cast 1;
			case "cubic": cast 2;
			case "linearAngle": cast 3;
			case "cubicAngle": cast 4;
			case _: null;
		}
	}
}
