package sunaba;

enum abstract CullModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var clockwise = cast 1;
	var counterClockwise = cast 2;
	public static var values = [disabled, clockwise, counterClockwise];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "clockwise": cast 1;
			case "counterClockwise": cast 2;
			case _: null;
		}
	}
}
