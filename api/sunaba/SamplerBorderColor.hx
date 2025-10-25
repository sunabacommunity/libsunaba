package sunaba;

enum abstract SamplerBorderColor(Int) from Int to Int {
	var floatTransparentBlack = cast 0;
	var intTransparentBlack = cast 1;
	var floatOpaqueBlack = cast 2;
	var intOpaqueBlack = cast 3;
	var floatOpaqueWhite = cast 4;
	var intOpaqueWhite = cast 5;
	var max = cast 6;
	public static var values = [floatTransparentBlack, intTransparentBlack, floatOpaqueBlack, intOpaqueBlack, floatOpaqueWhite, intOpaqueWhite, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "floatTransparentBlack": cast 0;
			case "intTransparentBlack": cast 1;
			case "floatOpaqueBlack": cast 2;
			case "intOpaqueBlack": cast 3;
			case "floatOpaqueWhite": cast 4;
			case "intOpaqueWhite": cast 5;
			case "max": cast 6;
			case _: null;
		}
	}
}
