package sunaba;

enum abstract PinJointParam(Int) from Int to Int {
	var softness = cast 0;
	var limitUpper = cast 1;
	var limitLower = cast 2;
	var motorTargetVelocity = cast 3;
	public static var values = [softness, limitUpper, limitLower, motorTargetVelocity];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "softness": cast 0;
			case "limitUpper": cast 1;
			case "limitLower": cast 2;
			case "motorTargetVelocity": cast 3;
			case _: null;
		}
	}
}
