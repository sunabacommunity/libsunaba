package sunaba;

enum abstract SamplerRepeatMode(Int) from Int to Int {
	var repeat = cast 0;
	var mirroredRepeat = cast 1;
	var clampToEdge = cast 2;
	var clampToBorder = cast 3;
	var mirrorClampToEdge = cast 4;
	var max = cast 5;
	public static var values = [repeat, mirroredRepeat, clampToEdge, clampToBorder, mirrorClampToEdge, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "repeat": cast 0;
			case "mirroredRepeat": cast 1;
			case "clampToEdge": cast 2;
			case "clampToBorder": cast 3;
			case "mirrorClampToEdge": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
