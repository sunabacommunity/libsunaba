package sunaba.ui;

enum abstract VSliderTicksPosition(Int) from Int to Int {
	var bottomRight = cast 0;
	var topLeft = cast 1;
	var both = cast 2;
	var center = cast 3;
	public static var values = [bottomRight, topLeft, both, center];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bottomRight": cast 0;
			case "topLeft": cast 1;
			case "both": cast 2;
			case "center": cast 3;
			case _: null;
		}
	}
}
