package sunaba;

enum abstract GridPatternEnum(Int) from Int to Int {
	var lines = cast 0;
	var dots = cast 1;
	public static var values = [lines, dots];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "lines": cast 0;
			case "dots": cast 1;
			case _: null;
		}
	}
}
