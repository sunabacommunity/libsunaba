package sunaba;

enum abstract AccessibilityScrollHint(Int) from Int to Int {
	var topLeft = cast 0;
	var bottomRight = cast 1;
	var topEdge = cast 2;
	var bottomEdge = cast 3;
	var leftEdge = cast 4;
	var rightEdge = cast 5;
	public static var values = [topLeft, bottomRight, topEdge, bottomEdge, leftEdge, rightEdge];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "topLeft": cast 0;
			case "bottomRight": cast 1;
			case "topEdge": cast 2;
			case "bottomEdge": cast 3;
			case "leftEdge": cast 4;
			case "rightEdge": cast 5;
			case _: null;
		}
	}
}
