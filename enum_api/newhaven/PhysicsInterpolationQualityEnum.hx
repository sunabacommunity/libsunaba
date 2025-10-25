package sunaba;

enum abstract PhysicsInterpolationQualityEnum(Int) from Int to Int {
	var fast = cast 0;
	var high = cast 1;
	public static var values = [fast, high];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "fast": cast 0;
			case "high": cast 1;
			case _: null;
		}
	}
}
