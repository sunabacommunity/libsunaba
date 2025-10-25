package sunaba;

enum abstract Side(Int) from Int to Int {
	var left = cast 0;
	var top = cast 1;
	var right = cast 2;
	var bottom = cast 3;
	public static var values = [left, top, right, bottom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "left": cast 0;
			case "top": cast 1;
			case "right": cast 2;
			case "bottom": cast 3;
			case _: null;
		}
	}
}
