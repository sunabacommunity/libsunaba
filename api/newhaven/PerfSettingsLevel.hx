package newhaven;

enum abstract PerfSettingsLevel(Int) from Int to Int {
	var powerSavings = cast 0;
	var sustainedLow = cast 1;
	var sustainedHigh = cast 2;
	var boost = cast 3;
	public static var values = [powerSavings, sustainedLow, sustainedHigh, boost];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "powerSavings": cast 0;
			case "sustainedLow": cast 1;
			case "sustainedHigh": cast 2;
			case "boost": cast 3;
			case _: null;
		}
	}
}
