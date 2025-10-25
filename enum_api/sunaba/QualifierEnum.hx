package sunaba;

enum abstract QualifierEnum(Int) from Int to Int {
	var none = cast 0;
	var global = cast 1;
	var instance = cast 2;
	var max = cast 3;
	public static var values = [none, global, instance, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "global": cast 1;
			case "instance": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
