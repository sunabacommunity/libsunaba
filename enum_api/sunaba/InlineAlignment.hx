package sunaba;

enum abstract InlineAlignment(Int) from Int to Int {
	var topTo = cast 0;
	var centerTo = cast 1;
	var bottomTo = cast 2;
	var baselineTo = cast 3;
	var toCenter = cast 4;
	var center = cast 5;
	var toBaseline = cast 8;
	var toBottom = cast 12;
	var bottom = cast 14;
	public static var values = [topTo, centerTo, bottomTo, baselineTo, toCenter, center, toBaseline, toBottom, bottom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "topTo": cast 0;
			case "centerTo": cast 1;
			case "bottomTo": cast 2;
			case "baselineTo": cast 3;
			case "toCenter": cast 4;
			case "center": cast 5;
			case "toBaseline": cast 8;
			case "toBottom": cast 12;
			case "bottom": cast 14;
			case _: null;
		}
	}
}
