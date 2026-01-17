package sunaba;

enum abstract Mode(Int) from Int to Int {
	var ecbEncrypt = cast 0;
	var ecbDecrypt = cast 1;
	var cbcEncrypt = cast 2;
	var cbcDecrypt = cast 3;
	var max = cast 4;
	public static var values = [ecbEncrypt, ecbDecrypt, cbcEncrypt, cbcDecrypt, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "ecbEncrypt": cast 0;
			case "ecbDecrypt": cast 1;
			case "cbcEncrypt": cast 2;
			case "cbcDecrypt": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
