package sunaba;

enum abstract BodyState(Int) from Int to Int {
	var transform = cast 0;
	var linearVelocity = cast 1;
	var angularVelocity = cast 2;
	var sleeping = cast 3;
	var canSleep = cast 4;
	public static var values = [transform, linearVelocity, angularVelocity, sleeping, canSleep];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "transform": cast 0;
			case "linearVelocity": cast 1;
			case "angularVelocity": cast 2;
			case "sleeping": cast 3;
			case "canSleep": cast 4;
			case _: null;
		}
	}
}
