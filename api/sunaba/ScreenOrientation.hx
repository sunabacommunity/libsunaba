package sunaba;

enum abstract ScreenOrientation(Int) from Int to Int {
	var landscape = cast 0;
	var portrait = cast 1;
	var reverseLandscape = cast 2;
	var reversePortrait = cast 3;
	var sensorLandscape = cast 4;
	var sensorPortrait = cast 5;
	var sensor = cast 6;
	public static var values = [landscape, portrait, reverseLandscape, reversePortrait, sensorLandscape, sensorPortrait, sensor];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "landscape": cast 0;
			case "portrait": cast 1;
			case "reverseLandscape": cast 2;
			case "reversePortrait": cast 3;
			case "sensorLandscape": cast 4;
			case "sensorPortrait": cast 5;
			case "sensor": cast 6;
			case _: null;
		}
	}
}
