package newhaven;

enum abstract FftSizeEnum(Int) from Int to Int {
	var size256 = cast 0;
	var size512 = cast 1;
	var size1024 = cast 2;
	var size2048 = cast 3;
	var size4096 = cast 4;
	var max = cast 5;
	public static var values = [size256, size512, size1024, size2048, size4096, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "size256": cast 0;
			case "size512": cast 1;
			case "size1024": cast 2;
			case "size2048": cast 3;
			case "size4096": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
