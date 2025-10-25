package sunaba;

enum abstract VisibleCharactersBehavior(Int) from Int to Int {
	var charsBeforeShaping = cast 0;
	var charsAfterShaping = cast 1;
	var glyphsAuto = cast 2;
	var glyphsLtr = cast 3;
	var glyphsRtl = cast 4;
	public static var values = [charsBeforeShaping, charsAfterShaping, glyphsAuto, glyphsLtr, glyphsRtl];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "charsBeforeShaping": cast 0;
			case "charsAfterShaping": cast 1;
			case "glyphsAuto": cast 2;
			case "glyphsLtr": cast 3;
			case "glyphsRtl": cast 4;
			case _: null;
		}
	}
}
