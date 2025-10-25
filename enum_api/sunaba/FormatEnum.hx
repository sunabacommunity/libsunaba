package sunaba;

enum abstract FormatEnum(Int) from Int to Int {
	var format8Bits = cast 0;
	var format16Bits = cast 1;
	var imaAdpcm = cast 2;
	var qoa = cast 3;
	public static var values = [format8Bits, format16Bits, imaAdpcm, qoa];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "format8Bits": cast 0;
			case "format16Bits": cast 1;
			case "imaAdpcm": cast 2;
			case "qoa": cast 3;
			case _: null;
		}
	}
}
