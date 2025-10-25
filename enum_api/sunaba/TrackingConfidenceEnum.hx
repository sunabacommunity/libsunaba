package sunaba;

enum abstract TrackingConfidenceEnum(Int) from Int to Int {
	var none = cast 0;
	var low = cast 1;
	var high = cast 2;
	public static var values = [none, low, high];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "low": cast 1;
			case "high": cast 2;
			case _: null;
		}
	}
}
