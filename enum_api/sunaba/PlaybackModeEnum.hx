package sunaba;

enum abstract PlaybackModeEnum(Int) from Int to Int {
	var randomNoRepeats = cast 0;
	var random = cast 1;
	var sequential = cast 2;
	public static var values = [randomNoRepeats, random, sequential];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "randomNoRepeats": cast 0;
			case "random": cast 1;
			case "sequential": cast 2;
			case _: null;
		}
	}
}
