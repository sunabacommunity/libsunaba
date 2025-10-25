package sunaba;

enum abstract Corner(Int) from Int to Int {
	var topLeft = cast 0;
	var topRight = cast 1;
	var bottomRight = cast 2;
	var bottomLeft = cast 3;
	public static var values = [topLeft, topRight, bottomRight, bottomLeft];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "topLeft": cast 0;
			case "topRight": cast 1;
			case "bottomRight": cast 2;
			case "bottomLeft": cast 3;
			case _: null;
		}
	}
}
