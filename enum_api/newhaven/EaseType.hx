package newhaven;

enum abstract EaseType(Int) from Int to Int {
	var _in = cast 0;
	var out = cast 1;
	var inOut = cast 2;
	var outIn = cast 3;
	public static var values = [_in, out, inOut, outIn];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_in": cast 0;
			case "out": cast 1;
			case "inOut": cast 2;
			case "outIn": cast 3;
			case _: null;
		}
	}
}
