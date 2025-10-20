package newhaven;

enum abstract TransitionToTime(Int) from Int to Int {
	var samePosition = cast 0;
	var start = cast 1;
	public static var values = [samePosition, start];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "samePosition": cast 0;
			case "start": cast 1;
			case _: null;
		}
	}
}
