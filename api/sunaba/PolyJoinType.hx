package sunaba;

enum abstract PolyJoinType(Int) from Int to Int {
	var square = cast 0;
	var round = cast 1;
	var miter = cast 2;
	public static var values = [square, round, miter];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "square": cast 0;
			case "round": cast 1;
			case "miter": cast 2;
			case _: null;
		}
	}
}
