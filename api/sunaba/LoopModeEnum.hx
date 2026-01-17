package sunaba;

enum abstract LoopModeEnum(Int) from Int to Int {
	var none = cast 0;
	var linear = cast 1;
	var pingpong = cast 2;
	public static var values = [none, linear, pingpong];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "linear": cast 1;
			case "pingpong": cast 2;
			case _: null;
		}
	}
}
