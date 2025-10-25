package sunaba.desktop;

enum abstract AcceptDialogInitialPosition(Int) from Int to Int {
	var absolute = cast 0;
	var centerPrimaryScreen = cast 1;
	var centerMainWindowScreen = cast 2;
	var centerOtherScreen = cast 3;
	var centerScreenWithMouseFocus = cast 4;
	var centerScreenWithKeyboardFocus = cast 5;
	public static var values = [absolute, centerPrimaryScreen, centerMainWindowScreen, centerOtherScreen, centerScreenWithMouseFocus, centerScreenWithKeyboardFocus];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "absolute": cast 0;
			case "centerPrimaryScreen": cast 1;
			case "centerMainWindowScreen": cast 2;
			case "centerOtherScreen": cast 3;
			case "centerScreenWithMouseFocus": cast 4;
			case "centerScreenWithKeyboardFocus": cast 5;
			case _: null;
		}
	}
}
