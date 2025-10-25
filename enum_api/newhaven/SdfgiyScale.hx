package sunaba;

enum abstract SdfgiyScale(Int) from Int to Int {
	var scale50Percent = cast 0;
	var scale75Percent = cast 1;
	var scale100Percent = cast 2;
	public static var values = [scale50Percent, scale75Percent, scale100Percent];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "scale50Percent": cast 0;
			case "scale75Percent": cast 1;
			case "scale100Percent": cast 2;
			case _: null;
		}
	}
}
