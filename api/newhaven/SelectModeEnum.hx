package newhaven;

enum abstract SelectModeEnum(Int) from Int to Int {
	var single = cast 0;
	var multi = cast 1;
	var toggle = cast 2;
	public static var values = [single, multi, toggle];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "single": cast 0;
			case "multi": cast 1;
			case "toggle": cast 2;
			case _: null;
		}
	}
}
