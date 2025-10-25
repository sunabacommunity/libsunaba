package sunaba;

enum abstract G6DofJointAxisFlag(Int) from Int to Int {
	var enableLinearLimit = cast 0;
	var enableAngularLimit = cast 1;
	var enableAngularSpring = cast 2;
	var enableLinearSpring = cast 3;
	var enableMotor = cast 4;
	var enableLinearMotor = cast 5;
	var max = cast 6;
	public static var values = [enableLinearLimit, enableAngularLimit, enableAngularSpring, enableLinearSpring, enableMotor, enableLinearMotor, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "enableLinearLimit": cast 0;
			case "enableAngularLimit": cast 1;
			case "enableAngularSpring": cast 2;
			case "enableLinearSpring": cast 3;
			case "enableMotor": cast 4;
			case "enableLinearMotor": cast 5;
			case "max": cast 6;
			case _: null;
		}
	}
}
