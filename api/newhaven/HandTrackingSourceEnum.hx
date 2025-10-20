package newhaven;

enum abstract HandTrackingSourceEnum(Int) from Int to Int {
	var unknown = cast 0;
	var unobstructed = cast 1;
	var controller = cast 2;
	var notTracked = cast 3;
	var max = cast 4;
	public static var values = [unknown, unobstructed, controller, notTracked, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unknown": cast 0;
			case "unobstructed": cast 1;
			case "controller": cast 2;
			case "notTracked": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
