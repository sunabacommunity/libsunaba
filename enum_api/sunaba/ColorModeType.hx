package sunaba;

enum abstract ColorModeType(Int) from Int to Int {
	var rgb = cast 0;
	var hsv = cast 1;
	var raw = cast 2;
	var okhsl = cast 3;
	public static var values = [rgb, hsv, raw, okhsl];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "rgb": cast 0;
			case "hsv": cast 1;
			case "raw": cast 2;
			case "okhsl": cast 3;
			case _: null;
		}
	}
}
