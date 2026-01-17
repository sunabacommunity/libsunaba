package sunaba;

enum abstract AprilTagDict(Int) from Int to Int {
	var dict16h5 = cast 1;
	var dict25h9 = cast 2;
	var dict36h10 = cast 3;
	var dict36h11 = cast 4;
	public static var values = [dict16h5, dict25h9, dict36h10, dict36h11];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "dict16h5": cast 1;
			case "dict25h9": cast 2;
			case "dict36h10": cast 3;
			case "dict36h11": cast 4;
			case _: null;
		}
	}
}
