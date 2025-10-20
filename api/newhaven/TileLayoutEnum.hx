package newhaven;

enum abstract TileLayoutEnum(Int) from Int to Int {
	var stacked = cast 0;
	var stackedOffset = cast 1;
	var stairsRight = cast 2;
	var stairsDown = cast 3;
	var diamondRight = cast 4;
	var diamondDown = cast 5;
	public static var values = [stacked, stackedOffset, stairsRight, stairsDown, diamondRight, diamondDown];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "stacked": cast 0;
			case "stackedOffset": cast 1;
			case "stairsRight": cast 2;
			case "stairsDown": cast 3;
			case "diamondRight": cast 4;
			case "diamondDown": cast 5;
			case _: null;
		}
	}
}
