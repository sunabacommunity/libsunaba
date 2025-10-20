package newhaven;

enum abstract DisableModeEnum(Int) from Int to Int {
	var remove = cast 0;
	var keepActive = cast 1;
	public static var values = [remove, keepActive];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "remove": cast 0;
			case "keepActive": cast 1;
			case _: null;
		}
	}
}
