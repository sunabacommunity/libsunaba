package sunaba;

enum abstract ListType(Int) from Int to Int {
	var numbers = cast 0;
	var letters = cast 1;
	var roman = cast 2;
	var dots = cast 3;
	public static var values = [numbers, letters, roman, dots];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "numbers": cast 0;
			case "letters": cast 1;
			case "roman": cast 2;
			case "dots": cast 3;
			case _: null;
		}
	}
}
