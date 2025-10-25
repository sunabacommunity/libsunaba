package sunaba;

enum abstract Flag(Int) from Int to Int {
	var useLimit = cast 0;
	var enableMotor = cast 1;
	var max = cast 2;
	public static var values = [useLimit, enableMotor, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "useLimit": cast 0;
			case "enableMotor": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
