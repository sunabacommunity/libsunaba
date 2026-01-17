package sunaba;

enum abstract UpdateMode(Int) from Int to Int {
	var continuous = cast 0;
	var discrete = cast 1;
	var capture = cast 2;
	public static var values = [continuous, discrete, capture];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "continuous": cast 0;
			case "discrete": cast 1;
			case "capture": cast 2;
			case _: null;
		}
	}
}
