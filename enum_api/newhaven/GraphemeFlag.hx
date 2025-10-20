package newhaven;

enum abstract GraphemeFlag(Int) from Int to Int {
	var valid = cast 1;
	var rtl = cast 2;
	var virtual = cast 4;
	var space = cast 8;
	var breakHard = cast 16;
	var breakSoft = cast 32;
	var tab = cast 64;
	var elongation = cast 128;
	var punctuation = cast 256;
	var underscore = cast 512;
	var connected = cast 1024;
	var safeToInsertTatweel = cast 2048;
	var embeddedObject = cast 4096;
	var softHyphen = cast 8192;
	public static var values = [valid, rtl, virtual, space, breakHard, breakSoft, tab, elongation, punctuation, underscore, connected, safeToInsertTatweel, embeddedObject, softHyphen];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "valid": cast 1;
			case "rtl": cast 2;
			case "virtual": cast 4;
			case "space": cast 8;
			case "breakHard": cast 16;
			case "breakSoft": cast 32;
			case "tab": cast 64;
			case "elongation": cast 128;
			case "punctuation": cast 256;
			case "underscore": cast 512;
			case "connected": cast 1024;
			case "safeToInsertTatweel": cast 2048;
			case "embeddedObject": cast 4096;
			case "softHyphen": cast 8192;
			case _: null;
		}
	}
}
