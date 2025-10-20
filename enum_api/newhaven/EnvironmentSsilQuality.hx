package newhaven;

enum abstract EnvironmentSsilQuality(Int) from Int to Int {
	var veryLow = cast 0;
	var low = cast 1;
	var medium = cast 2;
	var high = cast 3;
	var ultra = cast 4;
	public static var values = [veryLow, low, medium, high, ultra];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "veryLow": cast 0;
			case "low": cast 1;
			case "medium": cast 2;
			case "high": cast 3;
			case "ultra": cast 4;
			case _: null;
		}
	}
}
