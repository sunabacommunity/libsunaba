package newhaven;

enum abstract ParsedGeometryTypeEnum(Int) from Int to Int {
	var meshInstances = cast 0;
	var staticColliders = cast 1;
	var both = cast 2;
	var max = cast 3;
	public static var values = [meshInstances, staticColliders, both, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "meshInstances": cast 0;
			case "staticColliders": cast 1;
			case "both": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
