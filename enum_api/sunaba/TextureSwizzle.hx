package sunaba;

enum abstract TextureSwizzle(Int) from Int to Int {
	var identity = cast 0;
	var zero = cast 1;
	var one = cast 2;
	var r = cast 3;
	var g = cast 4;
	var b = cast 5;
	var a = cast 6;
	var max = cast 7;
	public static var values = [identity, zero, one, r, g, b, a, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "identity": cast 0;
			case "zero": cast 1;
			case "one": cast 2;
			case "r": cast 3;
			case "g": cast 4;
			case "b": cast 5;
			case "a": cast 6;
			case "max": cast 7;
			case _: null;
		}
	}
}
