package sunaba;

enum abstract ResolverStatus(Int) from Int to Int {
	var none = cast 0;
	var waiting = cast 1;
	var done = cast 2;
	var error = cast 3;
	public static var values = [none, waiting, done, error];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "waiting": cast 1;
			case "done": cast 2;
			case "error": cast 3;
			case _: null;
		}
	}
}
