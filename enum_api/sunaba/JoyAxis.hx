package sunaba;

enum abstract JoyAxis(Int) from Int to Int {
	var leftX = cast 0;
	var leftY = cast 1;
	var rightX = cast 2;
	var rightY = cast 3;
	var triggerLeft = cast 4;
	var triggerRight = cast 5;
	var sdlMax = cast 6;
	var max = cast 10;
	var invalid = cast -1;
	public static var values = [leftX, leftY, rightX, rightY, triggerLeft, triggerRight, sdlMax, max, invalid];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "leftX": cast 0;
			case "leftY": cast 1;
			case "rightX": cast 2;
			case "rightY": cast 3;
			case "triggerLeft": cast 4;
			case "triggerRight": cast 5;
			case "sdlMax": cast 6;
			case "max": cast 10;
			case "invalid": cast -1;
			case _: null;
		}
	}
}
