package newhaven;

enum abstract JointParam(Int) from Int to Int {
	var bias = cast 0;
	var maxBias = cast 1;
	var maxForce = cast 2;
	public static var values = [bias, maxBias, maxForce];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bias": cast 0;
			case "maxBias": cast 1;
			case "maxForce": cast 2;
			case _: null;
		}
	}
}
