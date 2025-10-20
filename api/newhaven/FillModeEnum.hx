package newhaven;

enum abstract FillModeEnum(Int) from Int to Int {
	var leftToRight = cast 0;
	var rightToLeft = cast 1;
	var topToBottom = cast 2;
	var bottomToTop = cast 3;
	var clockwise = cast 4;
	var counterClockwise = cast 5;
	var bilinearLeftAndRight = cast 6;
	var bilinearTopAndBottom = cast 7;
	var clockwiseAndCounterClockwise = cast 8;
	public static var values = [leftToRight, rightToLeft, topToBottom, bottomToTop, clockwise, counterClockwise, bilinearLeftAndRight, bilinearTopAndBottom, clockwiseAndCounterClockwise];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "leftToRight": cast 0;
			case "rightToLeft": cast 1;
			case "topToBottom": cast 2;
			case "bottomToTop": cast 3;
			case "clockwise": cast 4;
			case "counterClockwise": cast 5;
			case "bilinearLeftAndRight": cast 6;
			case "bilinearTopAndBottom": cast 7;
			case "clockwiseAndCounterClockwise": cast 8;
			case _: null;
		}
	}
}
