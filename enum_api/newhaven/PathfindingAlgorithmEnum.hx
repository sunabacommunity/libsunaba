package sunaba;

enum abstract PathfindingAlgorithmEnum(Int) from Int to Int {
	var astar = cast 0;
	public static var values = [astar];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "astar": cast 0;
			case _: null;
		}
	}
}
