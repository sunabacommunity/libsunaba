package sunaba;

enum abstract PinJointParam(Int) from Int to Int {
	var bias = cast 0;
	var damping = cast 1;
	var impulseClamp = cast 2;
	public static var values = [bias, damping, impulseClamp];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bias": cast 0;
			case "damping": cast 1;
			case "impulseClamp": cast 2;
			case _: null;
		}
	}
}
