package sunaba;

enum abstract ClockDirection(Int) from Int to Int {
	var clockwise = cast 0;
	var counterclockwise = cast 1;
	public static var values = [clockwise, counterclockwise];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "clockwise": cast 0;
			case "counterclockwise": cast 1;
			case _: null;
		}
	}
}
