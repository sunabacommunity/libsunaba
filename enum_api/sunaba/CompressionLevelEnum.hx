package sunaba;

enum abstract CompressionLevelEnum(Int) from Int to Int {
	var none = cast 0;
	var fast = cast 1;
	var best = cast 9;
	var _default = cast -1;
	public static var values = [none, fast, best, _default];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "fast": cast 1;
			case "best": cast 9;
			case "_default": cast -1;
			case _: null;
		}
	}
}
