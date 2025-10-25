package sunaba;

enum abstract TileAnimationMode(Int) from Int to Int {
	var _default = cast 0;
	var randomStartTimes = cast 1;
	var max = cast 2;
	public static var values = [_default, randomStartTimes, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "randomStartTimes": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
