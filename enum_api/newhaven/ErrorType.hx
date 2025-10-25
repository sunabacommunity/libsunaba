package sunaba;

enum abstract ErrorType(Int) from Int to Int {
	var error = cast 0;
	var warning = cast 1;
	var script = cast 2;
	var shader = cast 3;
	public static var values = [error, warning, script, shader];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "error": cast 0;
			case "warning": cast 1;
			case "script": cast 2;
			case "shader": cast 3;
			case _: null;
		}
	}
}
