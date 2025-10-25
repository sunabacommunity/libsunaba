package sunaba;

enum abstract Filter(Int) from Int to Int {
	var nearest = cast 0;
	var linear = cast 1;
	var cubic = cast 2;
	public static var values = [nearest, linear, cubic];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "nearest": cast 0;
			case "linear": cast 1;
			case "cubic": cast 2;
			case _: null;
		}
	}
}
