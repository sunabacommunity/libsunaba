package sunaba;

enum abstract FindMode(Int) from Int to Int {
	var nearest = cast 0;
	var approx = cast 1;
	var exact = cast 2;
	public static var values = [nearest, approx, exact];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "nearest": cast 0;
			case "approx": cast 1;
			case "exact": cast 2;
			case _: null;
		}
	}
}
