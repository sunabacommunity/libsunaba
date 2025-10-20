package newhaven;

enum abstract MixTargetEnum(Int) from Int to Int {
	var stereo = cast 0;
	var surround = cast 1;
	var center = cast 2;
	public static var values = [stereo, surround, center];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "stereo": cast 0;
			case "surround": cast 1;
			case "center": cast 2;
			case _: null;
		}
	}
}
