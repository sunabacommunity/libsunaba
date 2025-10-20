package newhaven;

enum abstract ShadowQuality(Int) from Int to Int {
	var hard = cast 0;
	var softVeryLow = cast 1;
	var softLow = cast 2;
	var softMedium = cast 3;
	var softHigh = cast 4;
	var softUltra = cast 5;
	var max = cast 6;
	public static var values = [hard, softVeryLow, softLow, softMedium, softHigh, softUltra, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "hard": cast 0;
			case "softVeryLow": cast 1;
			case "softLow": cast 2;
			case "softMedium": cast 3;
			case "softHigh": cast 4;
			case "softUltra": cast 5;
			case "max": cast 6;
			case _: null;
		}
	}
}
