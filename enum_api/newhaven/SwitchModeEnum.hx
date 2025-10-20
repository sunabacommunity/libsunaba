package newhaven;

enum abstract SwitchModeEnum(Int) from Int to Int {
	var immediate = cast 0;
	var sync = cast 1;
	var atEnd = cast 2;
	public static var values = [immediate, sync, atEnd];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "immediate": cast 0;
			case "sync": cast 1;
			case "atEnd": cast 2;
			case _: null;
		}
	}
}
