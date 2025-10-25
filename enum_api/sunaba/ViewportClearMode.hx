package sunaba;

enum abstract ViewportClearMode(Int) from Int to Int {
	var always = cast 0;
	var never = cast 1;
	var onlyNextFrame = cast 2;
	public static var values = [always, never, onlyNextFrame];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "always": cast 0;
			case "never": cast 1;
			case "onlyNextFrame": cast 2;
			case _: null;
		}
	}
}
