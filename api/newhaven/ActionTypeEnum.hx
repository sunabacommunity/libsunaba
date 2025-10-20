package newhaven;

enum abstract ActionTypeEnum(Int) from Int to Int {
	var bool = cast 0;
	var float = cast 1;
	var vector2 = cast 2;
	var pose = cast 3;
	public static var values = [bool, float, vector2, pose];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bool": cast 0;
			case "float": cast 1;
			case "vector2": cast 2;
			case "pose": cast 3;
			case _: null;
		}
	}
}
