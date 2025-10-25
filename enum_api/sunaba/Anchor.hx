package sunaba;

enum abstract Anchor(Int) from Int to Int {
	var begin = cast 0;
	var end = cast 1;
	public static var values = [begin, end];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "begin": cast 0;
			case "end": cast 1;
			case _: null;
		}
	}
}
