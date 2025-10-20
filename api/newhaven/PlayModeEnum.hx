package newhaven;

enum abstract PlayModeEnum(Int) from Int to Int {
	var forward = cast 0;
	var backward = cast 1;
	public static var values = [forward, backward];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "forward": cast 0;
			case "backward": cast 1;
			case _: null;
		}
	}
}
