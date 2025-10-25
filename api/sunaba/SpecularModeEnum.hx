package sunaba;

enum abstract SpecularModeEnum(Int) from Int to Int {
	var schlickGgx = cast 0;
	var toon = cast 1;
	var disabled = cast 2;
	public static var values = [schlickGgx, toon, disabled];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "schlickGgx": cast 0;
			case "toon": cast 1;
			case "disabled": cast 2;
			case _: null;
		}
	}
}
