package sunaba;

enum abstract VisibilityUpdateModeEnum(Int) from Int to Int {
	var idle = cast 0;
	var physics = cast 1;
	var none = cast 2;
	public static var values = [idle, physics, none];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "idle": cast 0;
			case "physics": cast 1;
			case "none": cast 2;
			case _: null;
		}
	}
}
