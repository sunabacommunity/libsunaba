package sunaba;

enum abstract PrecisionEnum(Int) from Int to Int {
	var none = cast 0;
	var coarse = cast 1;
	var fine = cast 2;
	var max = cast 3;
	public static var values = [none, coarse, fine, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "coarse": cast 1;
			case "fine": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
