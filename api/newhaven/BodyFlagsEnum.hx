package sunaba;

enum abstract BodyFlagsEnum(Int) from Int to Int {
	var upperBodySupported = cast 1;
	var lowerBodySupported = cast 2;
	var handsSupported = cast 4;
	public static var values = [upperBodySupported, lowerBodySupported, handsSupported];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "upperBodySupported": cast 1;
			case "lowerBodySupported": cast 2;
			case "handsSupported": cast 4;
			case _: null;
		}
	}
}
