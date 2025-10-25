package sunaba;

enum abstract FontAntialiasing(Int) from Int to Int {
	var none = cast 0;
	var gray = cast 1;
	var lcd = cast 2;
	public static var values = [none, gray, lcd];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "gray": cast 1;
			case "lcd": cast 2;
			case _: null;
		}
	}
}
