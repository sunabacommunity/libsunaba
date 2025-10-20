package newhaven;

enum abstract ModifierCallbackModeProcessEnum(Int) from Int to Int {
	var physics = cast 0;
	var idle = cast 1;
	var manual = cast 2;
	public static var values = [physics, idle, manual];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "physics": cast 0;
			case "idle": cast 1;
			case "manual": cast 2;
			case _: null;
		}
	}
}
