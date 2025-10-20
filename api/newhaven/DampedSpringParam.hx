package newhaven;

enum abstract DampedSpringParam(Int) from Int to Int {
	var restLength = cast 0;
	var stiffness = cast 1;
	var damping = cast 2;
	public static var values = [restLength, stiffness, damping];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "restLength": cast 0;
			case "stiffness": cast 1;
			case "damping": cast 2;
			case _: null;
		}
	}
}
