package sunaba;

enum abstract DisableModeEnum(Int) from Int to Int {
	var remove = cast 0;
	var makeStatic = cast 1;
	var keepActive = cast 2;
	public static var values = [remove, makeStatic, keepActive];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "remove": cast 0;
			case "makeStatic": cast 1;
			case "keepActive": cast 2;
			case _: null;
		}
	}
}
