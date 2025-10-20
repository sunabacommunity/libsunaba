package newhaven;

enum abstract TrackerHand(Int) from Int to Int {
	var unknown = cast 0;
	var left = cast 1;
	var right = cast 2;
	var max = cast 3;
	public static var values = [unknown, left, right, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unknown": cast 0;
			case "left": cast 1;
			case "right": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
