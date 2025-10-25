package sunaba;

enum abstract SpacingType(Int) from Int to Int {
	var glyph = cast 0;
	var space = cast 1;
	var top = cast 2;
	var bottom = cast 3;
	var max = cast 4;
	public static var values = [glyph, space, top, bottom, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "glyph": cast 0;
			case "space": cast 1;
			case "top": cast 2;
			case "bottom": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
