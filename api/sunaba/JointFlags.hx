package sunaba;

enum abstract JointFlags(Int) from Int to Int {
	var orientationValid = cast 1;
	var orientationTracked = cast 2;
	var positionValid = cast 4;
	var positionTracked = cast 8;
	public static var values = [orientationValid, orientationTracked, positionValid, positionTracked];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "orientationValid": cast 1;
			case "orientationTracked": cast 2;
			case "positionValid": cast 4;
			case "positionTracked": cast 8;
			case _: null;
		}
	}
}
