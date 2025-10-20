package newhaven;

enum abstract PortType(Int) from Int to Int {
	var scalar = cast 0;
	var scalarInt = cast 1;
	var scalarUint = cast 2;
	var vector2d = cast 3;
	var vector3d = cast 4;
	var vector4d = cast 5;
	var boolean = cast 6;
	var transform = cast 7;
	var sampler = cast 8;
	var max = cast 9;
	public static var values = [scalar, scalarInt, scalarUint, vector2d, vector3d, vector4d, boolean, transform, sampler, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "scalar": cast 0;
			case "scalarInt": cast 1;
			case "scalarUint": cast 2;
			case "vector2d": cast 3;
			case "vector3d": cast 4;
			case "vector4d": cast 5;
			case "boolean": cast 6;
			case "transform": cast 7;
			case "sampler": cast 8;
			case "max": cast 9;
			case _: null;
		}
	}
}
