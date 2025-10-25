package sunaba;

enum abstract DomainWarpFractalTypeEnum(Int) from Int to Int {
	var none = cast 0;
	var progressive = cast 1;
	var independent = cast 2;
	public static var values = [none, progressive, independent];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "progressive": cast 1;
			case "independent": cast 2;
			case _: null;
		}
	}
}
