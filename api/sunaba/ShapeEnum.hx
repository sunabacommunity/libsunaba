package sunaba;

enum abstract ShapeEnum(Int) from Int to Int {
	var flat = cast 0;
	var cross = cast 1;
	public static var values = [flat, cross];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "flat": cast 0;
			case "cross": cast 1;
			case _: null;
		}
	}
}
