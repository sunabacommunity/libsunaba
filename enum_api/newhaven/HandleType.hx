package sunaba;

enum abstract HandleType(Int) from Int to Int {
	var displayHandle = cast 0;
	var windowHandle = cast 1;
	var windowView = cast 2;
	var openglContext = cast 3;
	var eglDisplay = cast 4;
	var eglConfig = cast 5;
	public static var values = [displayHandle, windowHandle, windowView, openglContext, eglDisplay, eglConfig];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "displayHandle": cast 0;
			case "windowHandle": cast 1;
			case "windowView": cast 2;
			case "openglContext": cast 3;
			case "eglDisplay": cast 4;
			case "eglConfig": cast 5;
			case _: null;
		}
	}
}
