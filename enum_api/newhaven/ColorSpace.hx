package sunaba;

enum abstract ColorSpace(Int) from Int to Int {
	var srgb = cast 0;
	var linearSrgb = cast 1;
	var oklab = cast 2;
	public static var values = [srgb, linearSrgb, oklab];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "srgb": cast 0;
			case "linearSrgb": cast 1;
			case "oklab": cast 2;
			case _: null;
		}
	}
}
