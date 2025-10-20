package newhaven;

enum abstract Hands(Int) from Int to Int {
	var left = cast 0;
	var right = cast 1;
	var max = cast 2;
	public static var values = [left, right, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "left": cast 0;
			case "right": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
