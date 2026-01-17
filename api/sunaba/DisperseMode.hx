package sunaba;

enum abstract DisperseMode(Int) from Int to Int {
	var even = cast 0;
	var weighted = cast 1;
	var custom = cast 2;
	public static var values = [even, weighted, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "even": cast 0;
			case "weighted": cast 1;
			case "custom": cast 2;
			case _: null;
		}
	}
}
