package newhaven;

enum abstract Feature(Int) from Int to Int {
	var simpleLayout = cast 1;
	var bidiLayout = cast 2;
	var verticalLayout = cast 4;
	var shaping = cast 8;
	var kashidaJustification = cast 16;
	var breakIterators = cast 32;
	var fontBitmap = cast 64;
	var fontDynamic = cast 128;
	var fontMsdf = cast 256;
	var fontSystem = cast 512;
	var fontVariable = cast 1024;
	var contextSensitiveCaseConversion = cast 2048;
	var useSupportData = cast 4096;
	var unicodeIdentifiers = cast 8192;
	var unicodeSecurity = cast 16384;
	public static var values = [simpleLayout, bidiLayout, verticalLayout, shaping, kashidaJustification, breakIterators, fontBitmap, fontDynamic, fontMsdf, fontSystem, fontVariable, contextSensitiveCaseConversion, useSupportData, unicodeIdentifiers, unicodeSecurity];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "simpleLayout": cast 1;
			case "bidiLayout": cast 2;
			case "verticalLayout": cast 4;
			case "shaping": cast 8;
			case "kashidaJustification": cast 16;
			case "breakIterators": cast 32;
			case "fontBitmap": cast 64;
			case "fontDynamic": cast 128;
			case "fontMsdf": cast 256;
			case "fontSystem": cast 512;
			case "fontVariable": cast 1024;
			case "contextSensitiveCaseConversion": cast 2048;
			case "useSupportData": cast 4096;
			case "unicodeIdentifiers": cast 8192;
			case "unicodeSecurity": cast 16384;
			case _: null;
		}
	}
}
