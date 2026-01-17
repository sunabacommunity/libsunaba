package sunaba;

enum abstract SecondaryDirection(Int) from Int to Int {
	var none = cast 0;
	var plusX = cast 1;
	var minusX = cast 2;
	var plusY = cast 3;
	var minusY = cast 4;
	var plusZ = cast 5;
	var minusZ = cast 6;
	var custom = cast 7;
	public static var values = [none, plusX, minusX, plusY, minusY, plusZ, minusZ, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "plusX": cast 1;
			case "minusX": cast 2;
			case "plusY": cast 3;
			case "minusY": cast 4;
			case "plusZ": cast 5;
			case "minusZ": cast 6;
			case "custom": cast 7;
			case _: null;
		}
	}
}
