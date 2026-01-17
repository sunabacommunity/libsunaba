package sunaba;

enum abstract JointType(Int) from Int to Int {
	var pin = cast 0;
	var groove = cast 1;
	var dampedSpring = cast 2;
	var max = cast 3;
	public static var values = [pin, groove, dampedSpring, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "pin": cast 0;
			case "groove": cast 1;
			case "dampedSpring": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
