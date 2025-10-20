package newhaven;

enum abstract HintEnum(Int) from Int to Int {
	var none = cast 0;
	var range = cast 1;
	var rangeStep = cast 2;
	var _enum = cast 3;
	var max = cast 4;
	public static var values = [none, range, rangeStep, _enum, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "range": cast 1;
			case "rangeStep": cast 2;
			case "_enum": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
