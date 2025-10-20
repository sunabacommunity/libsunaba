package newhaven;

enum abstract HandTrackedSource(Int) from Int to Int {
	var unknown = cast 0;
	var unobstructed = cast 1;
	var controller = cast 2;
	var max = cast 3;
	public static var values = [unknown, unobstructed, controller, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unknown": cast 0;
			case "unobstructed": cast 1;
			case "controller": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
