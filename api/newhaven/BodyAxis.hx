package newhaven;

enum abstract BodyAxis(Int) from Int to Int {
	var linearX = cast 1;
	var linearY = cast 2;
	var linearZ = cast 4;
	var angularX = cast 8;
	var angularY = cast 16;
	var angularZ = cast 32;
	public static var values = [linearX, linearY, linearZ, angularX, angularY, angularZ];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "linearX": cast 1;
			case "linearY": cast 2;
			case "linearZ": cast 4;
			case "angularX": cast 8;
			case "angularY": cast 16;
			case "angularZ": cast 32;
			case _: null;
		}
	}
}
