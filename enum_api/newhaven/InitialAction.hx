package sunaba;

enum abstract InitialAction(Int) from Int to Int {
	var load = cast 0;
	var clear = cast 1;
	var discard = cast 2;
	var max = cast 3;
	public static var values = [load, clear, discard, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "load": cast 0;
			case "clear": cast 1;
			case "discard": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
