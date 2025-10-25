package sunaba;

enum abstract CellShapeEnum(Int) from Int to Int {
	var square = cast 0;
	var isometricRight = cast 1;
	var isometricDown = cast 2;
	var max = cast 3;
	public static var values = [square, isometricRight, isometricDown, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "square": cast 0;
			case "isometricRight": cast 1;
			case "isometricDown": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
