package sunaba;

enum abstract InterpolationModeEnum(Int) from Int to Int {
	var linear = cast 0;
	var constant = cast 1;
	var cubic = cast 2;
	public static var values = [linear, constant, cubic];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "linear": cast 0;
			case "constant": cast 1;
			case "cubic": cast 2;
			case _: null;
		}
	}
}
