package sunaba;

enum abstract EditAction(Int) from Int to Int {
	var none = cast 0;
	var typing = cast 1;
	var backspace = cast 2;
	var delete = cast 3;
	public static var values = [none, typing, backspace, delete];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "typing": cast 1;
			case "backspace": cast 2;
			case "delete": cast 3;
			case _: null;
		}
	}
}
