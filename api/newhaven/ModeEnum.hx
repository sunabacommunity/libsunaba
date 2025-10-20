package newhaven;

enum abstract ModeEnum(Int) from Int to Int {
	var windowed = cast 0;
	var minimized = cast 1;
	var maximized = cast 2;
	var fullscreen = cast 3;
	var exclusiveFullscreen = cast 4;
	public static var values = [windowed, minimized, maximized, fullscreen, exclusiveFullscreen];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "windowed": cast 0;
			case "minimized": cast 1;
			case "maximized": cast 2;
			case "fullscreen": cast 3;
			case "exclusiveFullscreen": cast 4;
			case _: null;
		}
	}
}
