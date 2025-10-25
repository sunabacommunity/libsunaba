package sunaba;

enum abstract DrawMode(Int) from Int to Int {
	var normal = cast 0;
	var pressed = cast 1;
	var hover = cast 2;
	var disabled = cast 3;
	var hoverPressed = cast 4;
	public static var values = [normal, pressed, hover, disabled, hoverPressed];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "normal": cast 0;
			case "pressed": cast 1;
			case "hover": cast 2;
			case "disabled": cast 3;
			case "hoverPressed": cast 4;
			case _: null;
		}
	}
}
