package newhaven;

enum abstract PolygonFrontFace(Int) from Int to Int {
	var clockwise = cast 0;
	var counterClockwise = cast 1;
	public static var values = [clockwise, counterClockwise];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "clockwise": cast 0;
			case "counterClockwise": cast 1;
			case _: null;
		}
	}
}
