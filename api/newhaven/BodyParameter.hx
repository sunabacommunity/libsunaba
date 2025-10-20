package newhaven;

enum abstract BodyParameter(Int) from Int to Int {
	var bounce = cast 0;
	var friction = cast 1;
	var mass = cast 2;
	var inertia = cast 3;
	var centerOfMass = cast 4;
	var gravityScale = cast 5;
	var linearDampMode = cast 6;
	var angularDampMode = cast 7;
	var linearDamp = cast 8;
	var angularDamp = cast 9;
	var max = cast 10;
	public static var values = [bounce, friction, mass, inertia, centerOfMass, gravityScale, linearDampMode, angularDampMode, linearDamp, angularDamp, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bounce": cast 0;
			case "friction": cast 1;
			case "mass": cast 2;
			case "inertia": cast 3;
			case "centerOfMass": cast 4;
			case "gravityScale": cast 5;
			case "linearDampMode": cast 6;
			case "angularDampMode": cast 7;
			case "linearDamp": cast 8;
			case "angularDamp": cast 9;
			case "max": cast 10;
			case _: null;
		}
	}
}
