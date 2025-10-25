package sunaba;

enum abstract SpeakerMode(Int) from Int to Int {
	var modeStereo = cast 0;
	var surround31 = cast 1;
	var surround51 = cast 2;
	var surround71 = cast 3;
	public static var values = [modeStereo, surround31, surround51, surround71];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "modeStereo": cast 0;
			case "surround31": cast 1;
			case "surround51": cast 2;
			case "surround71": cast 3;
			case _: null;
		}
	}
}
