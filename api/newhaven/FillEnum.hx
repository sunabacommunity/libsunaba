package sunaba;

enum abstract FillEnum(Int) from Int to Int {
	var linear = cast 0;
	var radial = cast 1;
	var square = cast 2;
	public static var values = [linear, radial, square];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "linear": cast 0;
			case "radial": cast 1;
			case "square": cast 2;
			case _: null;
		}
	}
}
