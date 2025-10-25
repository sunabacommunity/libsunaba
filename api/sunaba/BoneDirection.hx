package sunaba;

enum abstract BoneDirection(Int) from Int to Int {
	var plusX = cast 0;
	var minusX = cast 1;
	var plusY = cast 2;
	var minusY = cast 3;
	var plusZ = cast 4;
	var minusZ = cast 5;
	var fromParent = cast 6;
	public static var values = [plusX, minusX, plusY, minusY, plusZ, minusZ, fromParent];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "plusX": cast 0;
			case "minusX": cast 1;
			case "plusY": cast 2;
			case "minusY": cast 3;
			case "plusZ": cast 4;
			case "minusZ": cast 5;
			case "fromParent": cast 6;
			case _: null;
		}
	}
}
