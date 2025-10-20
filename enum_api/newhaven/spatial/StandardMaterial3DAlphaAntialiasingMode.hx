package newhaven.spatial;

enum abstract StandardMaterial3DAlphaAntialiasingMode(Int) from Int to Int {
	var off = cast 0;
	var alphaToCoverage = cast 1;
	var alphaToCoverageAndToOne = cast 2;
	public static var values = [off, alphaToCoverage, alphaToCoverageAndToOne];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "off": cast 0;
			case "alphaToCoverage": cast 1;
			case "alphaToCoverageAndToOne": cast 2;
			case _: null;
		}
	}
}
