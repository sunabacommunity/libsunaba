package newhaven;

enum abstract FadeMode(Int) from Int to Int {
	var disabled = cast 0;
	var _in = cast 1;
	var out = cast 2;
	var cross = cast 3;
	var automatic = cast 4;
	public static var values = [disabled, _in, out, cross, automatic];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "_in": cast 1;
			case "out": cast 2;
			case "cross": cast 3;
			case "automatic": cast 4;
			case _: null;
		}
	}
}
