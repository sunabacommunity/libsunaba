package sunaba;

enum abstract LineJointMode(Int) from Int to Int {
	var sharp = cast 0;
	var bevel = cast 1;
	var round = cast 2;
	public static var values = [sharp, bevel, round];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "sharp": cast 0;
			case "bevel": cast 1;
			case "round": cast 2;
			case _: null;
		}
	}
}
