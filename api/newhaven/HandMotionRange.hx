package newhaven;

enum abstract HandMotionRange(Int) from Int to Int {
	var unobstructed = cast 0;
	var conformToController = cast 1;
	var max = cast 2;
	public static var values = [unobstructed, conformToController, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unobstructed": cast 0;
			case "conformToController": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
