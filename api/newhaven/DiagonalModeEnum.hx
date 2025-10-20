package newhaven;

enum abstract DiagonalModeEnum(Int) from Int to Int {
	var always = cast 0;
	var never = cast 1;
	var atLeastOneWalkable = cast 2;
	var onlyIfNoObstacles = cast 3;
	var max = cast 4;
	public static var values = [always, never, atLeastOneWalkable, onlyIfNoObstacles, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "always": cast 0;
			case "never": cast 1;
			case "atLeastOneWalkable": cast 2;
			case "onlyIfNoObstacles": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
