package newhaven;

enum abstract TrackingStatus(Int) from Int to Int {
	var normalTracking = cast 0;
	var excessiveMotion = cast 1;
	var insufficientFeatures = cast 2;
	var unknownTracking = cast 3;
	var notTracking = cast 4;
	public static var values = [normalTracking, excessiveMotion, insufficientFeatures, unknownTracking, notTracking];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "normalTracking": cast 0;
			case "excessiveMotion": cast 1;
			case "insufficientFeatures": cast 2;
			case "unknownTracking": cast 3;
			case "notTracking": cast 4;
			case _: null;
		}
	}
}
