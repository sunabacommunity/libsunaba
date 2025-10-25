package sunaba;

enum abstract EnvironmentToneMapper(Int) from Int to Int {
	var linear = cast 0;
	var reinhard = cast 1;
	var filmic = cast 2;
	var aces = cast 3;
	var agx = cast 4;
	public static var values = [linear, reinhard, filmic, aces, agx];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "linear": cast 0;
			case "reinhard": cast 1;
			case "filmic": cast 2;
			case "aces": cast 3;
			case "agx": cast 4;
			case _: null;
		}
	}
}
