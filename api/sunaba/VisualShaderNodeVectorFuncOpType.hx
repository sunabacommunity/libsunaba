package sunaba;

enum abstract VisualShaderNodeVectorFuncOpType(Int) from Int to Int {
	var vector2d = cast 0;
	var vector3d = cast 1;
	var vector4d = cast 2;
	var max = cast 3;
	public static var values = [vector2d, vector3d, vector4d, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "vector2d": cast 0;
			case "vector3d": cast 1;
			case "vector4d": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
