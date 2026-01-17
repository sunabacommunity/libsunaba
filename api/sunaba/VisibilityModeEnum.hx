package sunaba;

enum abstract VisibilityModeEnum(Int) from Int to Int {
	var includeRequired = cast 0;
	var includeOptional = cast 1;
	var exclude = cast 2;
	public static var values = [includeRequired, includeOptional, exclude];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "includeRequired": cast 0;
			case "includeOptional": cast 1;
			case "exclude": cast 2;
			case _: null;
		}
	}
}
