package sunaba;

enum abstract VirtualKeyboardType(Int) from Int to Int {
	var _default = cast 0;
	var multiline = cast 1;
	var number = cast 2;
	var numberDecimal = cast 3;
	var phone = cast 4;
	var emailAddress = cast 5;
	var password = cast 6;
	var url = cast 7;
	public static var values = [_default, multiline, number, numberDecimal, phone, emailAddress, password, url];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "multiline": cast 1;
			case "number": cast 2;
			case "numberDecimal": cast 3;
			case "phone": cast 4;
			case "emailAddress": cast 5;
			case "password": cast 6;
			case "url": cast 7;
			case _: null;
		}
	}
}
