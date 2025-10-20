package newhaven;

enum abstract WindowEvent(Int) from Int to Int {
	var mouseEnter = cast 0;
	var mouseExit = cast 1;
	var focusIn = cast 2;
	var focusOut = cast 3;
	var closeRequest = cast 4;
	var goBackRequest = cast 5;
	var dpiChange = cast 6;
	var titlebarChange = cast 7;
	var forceClose = cast 8;
	public static var values = [mouseEnter, mouseExit, focusIn, focusOut, closeRequest, goBackRequest, dpiChange, titlebarChange, forceClose];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "mouseEnter": cast 0;
			case "mouseExit": cast 1;
			case "focusIn": cast 2;
			case "focusOut": cast 3;
			case "closeRequest": cast 4;
			case "goBackRequest": cast 5;
			case "dpiChange": cast 6;
			case "titlebarChange": cast 7;
			case "forceClose": cast 8;
			case _: null;
		}
	}
}
