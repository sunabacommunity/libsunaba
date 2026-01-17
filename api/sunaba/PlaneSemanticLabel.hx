package sunaba;

enum abstract PlaneSemanticLabel(Int) from Int to Int {
	var uncategorized = cast 1;
	var floor = cast 2;
	var wall = cast 3;
	var ceiling = cast 4;
	var table = cast 5;
	public static var values = [uncategorized, floor, wall, ceiling, table];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "uncategorized": cast 1;
			case "floor": cast 2;
			case "wall": cast 3;
			case "ceiling": cast 4;
			case "table": cast 5;
			case _: null;
		}
	}
}
