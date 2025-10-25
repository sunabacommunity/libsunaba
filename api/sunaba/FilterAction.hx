package sunaba;

enum abstract FilterAction(Int) from Int to Int {
	var ignore = cast 0;
	var pass = cast 1;
	var stop = cast 2;
	var blend = cast 3;
	public static var values = [ignore, pass, stop, blend];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "ignore": cast 0;
			case "pass": cast 1;
			case "stop": cast 2;
			case "blend": cast 3;
			case _: null;
		}
	}
}
