package newhaven;

enum abstract BodyUpdateEnum(Int) from Int to Int {
	var upperBody = cast 1;
	var lowerBody = cast 2;
	var hands = cast 4;
	public static var values = [upperBody, lowerBody, hands];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "upperBody": cast 1;
			case "lowerBody": cast 2;
			case "hands": cast 4;
			case _: null;
		}
	}
}
