package newhaven;

enum abstract TileShapeEnum(Int) from Int to Int {
	var square = cast 0;
	var isometric = cast 1;
	var halfOffsetSquare = cast 2;
	var hexagon = cast 3;
	public static var values = [square, isometric, halfOffsetSquare, hexagon];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "square": cast 0;
			case "isometric": cast 1;
			case "halfOffsetSquare": cast 2;
			case "hexagon": cast 3;
			case _: null;
		}
	}
}
