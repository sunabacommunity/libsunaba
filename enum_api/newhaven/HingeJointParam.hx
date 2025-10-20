package newhaven;

enum abstract HingeJointParam(Int) from Int to Int {
	var bias = cast 0;
	var limitUpper = cast 1;
	var limitLower = cast 2;
	var limitBias = cast 3;
	var limitSoftness = cast 4;
	var limitRelaxation = cast 5;
	var motorTargetVelocity = cast 6;
	var motorMaxImpulse = cast 7;
	public static var values = [bias, limitUpper, limitLower, limitBias, limitSoftness, limitRelaxation, motorTargetVelocity, motorMaxImpulse];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bias": cast 0;
			case "limitUpper": cast 1;
			case "limitLower": cast 2;
			case "limitBias": cast 3;
			case "limitSoftness": cast 4;
			case "limitRelaxation": cast 5;
			case "motorTargetVelocity": cast 6;
			case "motorMaxImpulse": cast 7;
			case _: null;
		}
	}
}
