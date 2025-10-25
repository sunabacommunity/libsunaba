package sunaba;

enum abstract ResultStatus(Int) from Int to Int {
	var running = cast 0;
	var finished = cast 1;
	var cancelled = cast 2;
	public static var values = [running, finished, cancelled];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "running": cast 0;
			case "finished": cast 1;
			case "cancelled": cast 2;
			case _: null;
		}
	}
}
