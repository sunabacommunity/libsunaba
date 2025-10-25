package sunaba;

enum abstract DofBlurQuality(Int) from Int to Int {
	var veryLow = cast 0;
	var low = cast 1;
	var medium = cast 2;
	var high = cast 3;
	public static var values = [veryLow, low, medium, high];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "veryLow": cast 0;
			case "low": cast 1;
			case "medium": cast 2;
			case "high": cast 3;
			case _: null;
		}
	}
}
