package newhaven;

enum abstract TransitionFromTime(Int) from Int to Int {
	var immediate = cast 0;
	var nextBeat = cast 1;
	var nextBar = cast 2;
	var end = cast 3;
	public static var values = [immediate, nextBeat, nextBar, end];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "immediate": cast 0;
			case "nextBeat": cast 1;
			case "nextBar": cast 2;
			case "end": cast 3;
			case _: null;
		}
	}
}
