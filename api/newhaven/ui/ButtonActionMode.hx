package newhaven.ui;

enum abstract ButtonActionMode(Int) from Int to Int {
	var press = cast 0;
	var release = cast 1;
	public static var values = [press, release];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "press": cast 0;
			case "release": cast 1;
			case _: null;
		}
	}
}
