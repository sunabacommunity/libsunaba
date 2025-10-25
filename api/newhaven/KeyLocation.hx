package sunaba;

enum abstract KeyLocation(Int) from Int to Int {
	var unspecified = cast 0;
	var left = cast 1;
	var right = cast 2;
	public static var values = [unspecified, left, right];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unspecified": cast 0;
			case "left": cast 1;
			case "right": cast 2;
			case _: null;
		}
	}
}
