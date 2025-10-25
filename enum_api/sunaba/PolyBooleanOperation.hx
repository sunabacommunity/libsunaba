package sunaba;

enum abstract PolyBooleanOperation(Int) from Int to Int {
	var union = cast 0;
	var difference = cast 1;
	var intersection = cast 2;
	var xor = cast 3;
	public static var values = [union, difference, intersection, xor];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "union": cast 0;
			case "difference": cast 1;
			case "intersection": cast 2;
			case "xor": cast 3;
			case _: null;
		}
	}
}
