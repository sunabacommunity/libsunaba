package sunaba;

enum abstract JointTypeEnum(Int) from Int to Int {
	var none = cast 0;
	var pin = cast 1;
	var cone = cast 2;
	var hinge = cast 3;
	var slider = cast 4;
	var type6Dof = cast 5;
	public static var values = [none, pin, cone, hinge, slider, type6Dof];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "pin": cast 1;
			case "cone": cast 2;
			case "hinge": cast 3;
			case "slider": cast 4;
			case "type6Dof": cast 5;
			case _: null;
		}
	}
}
