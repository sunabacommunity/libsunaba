package sunaba;

enum abstract MagnitudeMode(Int) from Int to Int {
	var average = cast 0;
	var max = cast 1;
	public static var values = [average, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "average": cast 0;
			case "max": cast 1;
			case _: null;
		}
	}
}
