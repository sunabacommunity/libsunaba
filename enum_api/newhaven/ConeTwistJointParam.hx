package sunaba;

enum abstract ConeTwistJointParam(Int) from Int to Int {
	var swingSpan = cast 0;
	var twistSpan = cast 1;
	var bias = cast 2;
	var softness = cast 3;
	var relaxation = cast 4;
	public static var values = [swingSpan, twistSpan, bias, softness, relaxation];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "swingSpan": cast 0;
			case "twistSpan": cast 1;
			case "bias": cast 2;
			case "softness": cast 3;
			case "relaxation": cast 4;
			case _: null;
		}
	}
}
