package newhaven;

enum abstract StdHandleType(Int) from Int to Int {
	var invalid = cast 0;
	var console = cast 1;
	var file = cast 2;
	var pipe = cast 3;
	var unknown = cast 4;
	public static var values = [invalid, console, file, pipe, unknown];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "invalid": cast 0;
			case "console": cast 1;
			case "file": cast 2;
			case "pipe": cast 3;
			case "unknown": cast 4;
			case _: null;
		}
	}
}
