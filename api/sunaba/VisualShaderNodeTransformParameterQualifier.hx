package sunaba;

enum abstract VisualShaderNodeTransformParameterQualifier(Int) from Int to Int {
	var none = cast 0;
	var global = cast 1;
	var instance = cast 2;
	var instanceIndex = cast 3;
	var max = cast 4;
	public static var values = [none, global, instance, instanceIndex, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "global": cast 1;
			case "instance": cast 2;
			case "instanceIndex": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
