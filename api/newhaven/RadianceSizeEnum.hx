package newhaven;

enum abstract RadianceSizeEnum(Int) from Int to Int {
	var size32 = cast 0;
	var size64 = cast 1;
	var size128 = cast 2;
	var size256 = cast 3;
	var size512 = cast 4;
	var size1024 = cast 5;
	var size2048 = cast 6;
	var max = cast 7;
	public static var values = [size32, size64, size128, size256, size512, size1024, size2048, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "size32": cast 0;
			case "size64": cast 1;
			case "size128": cast 2;
			case "size256": cast 3;
			case "size512": cast 4;
			case "size1024": cast 5;
			case "size2048": cast 6;
			case "max": cast 7;
			case _: null;
		}
	}
}
