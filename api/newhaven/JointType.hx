package newhaven;

enum abstract JointType(Int) from Int to Int {
	var pin = cast 0;
	var hinge = cast 1;
	var slider = cast 2;
	var coneTwist = cast 3;
	var type6Dof = cast 4;
	var max = cast 5;
	public static var values = [pin, hinge, slider, coneTwist, type6Dof, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "pin": cast 0;
			case "hinge": cast 1;
			case "slider": cast 2;
			case "coneTwist": cast 3;
			case "type6Dof": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
