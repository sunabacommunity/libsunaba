package sunaba;

enum abstract CustomFormat(Int) from Int to Int {
	var rgba8Unorm = cast 0;
	var rgba8Snorm = cast 1;
	var rgHalf = cast 2;
	var rgbaHalf = cast 3;
	var rFloat = cast 4;
	var rgFloat = cast 5;
	var rgbFloat = cast 6;
	var rgbaFloat = cast 7;
	var max = cast 8;
	public static var values = [rgba8Unorm, rgba8Snorm, rgHalf, rgbaHalf, rFloat, rgFloat, rgbFloat, rgbaFloat, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "rgba8Unorm": cast 0;
			case "rgba8Snorm": cast 1;
			case "rgHalf": cast 2;
			case "rgbaHalf": cast 3;
			case "rFloat": cast 4;
			case "rgFloat": cast 5;
			case "rgbFloat": cast 6;
			case "rgbaFloat": cast 7;
			case "max": cast 8;
			case _: null;
		}
	}
}
