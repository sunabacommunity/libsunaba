package newhaven;

enum abstract ContourPointTag(Int) from Int to Int {
	var offConic = cast 0;
	var on = cast 1;
	var offCubic = cast 2;
	public static var values = [offConic, on, offCubic];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "offConic": cast 0;
			case "on": cast 1;
			case "offCubic": cast 2;
			case _: null;
		}
	}
}
