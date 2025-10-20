package newhaven;

enum abstract RotationModeEnum(Int) from Int to Int {
	var none = cast 0;
	var y = cast 1;
	var xy = cast 2;
	var xyz = cast 3;
	var oriented = cast 4;
	public static var values = [none, y, xy, xyz, oriented];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "y": cast 1;
			case "xy": cast 2;
			case "xyz": cast 3;
			case "oriented": cast 4;
			case _: null;
		}
	}
}
