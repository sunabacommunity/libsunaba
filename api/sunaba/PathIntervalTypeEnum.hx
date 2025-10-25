package sunaba;

enum abstract PathIntervalTypeEnum(Int) from Int to Int {
	var distance = cast 0;
	var subdivide = cast 1;
	public static var values = [distance, subdivide];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "distance": cast 0;
			case "subdivide": cast 1;
			case _: null;
		}
	}
}
