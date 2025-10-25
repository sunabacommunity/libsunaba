package sunaba;

enum abstract TerrainMode(Int) from Int to Int {
	var cornersAndSides = cast 0;
	var corners = cast 1;
	var sides = cast 2;
	public static var values = [cornersAndSides, corners, sides];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "cornersAndSides": cast 0;
			case "corners": cast 1;
			case "sides": cast 2;
			case _: null;
		}
	}
}
