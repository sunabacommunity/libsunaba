package sunaba;

enum abstract HingeJointFlag(Int) from Int to Int {
	var useLimit = cast 0;
	var enableMotor = cast 1;
	public static var values = [useLimit, enableMotor];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "useLimit": cast 0;
			case "enableMotor": cast 1;
			case _: null;
		}
	}
}
