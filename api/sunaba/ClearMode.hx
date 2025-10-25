package sunaba;

enum abstract ClearMode(Int) from Int to Int {
	var always = cast 0;
	var never = cast 1;
	var once = cast 2;
	public static var values = [always, never, once];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "always": cast 0;
			case "never": cast 1;
			case "once": cast 2;
			case _: null;
		}
	}
}
