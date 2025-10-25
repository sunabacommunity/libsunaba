package sunaba;

enum abstract WindowFlags(Int) from Int to Int {
	var resizeDisabled = cast 0;
	var borderless = cast 1;
	var alwaysOnTop = cast 2;
	var transparent = cast 3;
	var noFocus = cast 4;
	var popup = cast 5;
	var extendToTitle = cast 6;
	var mousePassthrough = cast 7;
	var sharpCorners = cast 8;
	var excludeFromCapture = cast 9;
	var popupWmHint = cast 10;
	var minimizeDisabled = cast 11;
	var maximizeDisabled = cast 12;
	var max = cast 13;
	public static var values = [resizeDisabled, borderless, alwaysOnTop, transparent, noFocus, popup, extendToTitle, mousePassthrough, sharpCorners, excludeFromCapture, popupWmHint, minimizeDisabled, maximizeDisabled, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "resizeDisabled": cast 0;
			case "borderless": cast 1;
			case "alwaysOnTop": cast 2;
			case "transparent": cast 3;
			case "noFocus": cast 4;
			case "popup": cast 5;
			case "extendToTitle": cast 6;
			case "mousePassthrough": cast 7;
			case "sharpCorners": cast 8;
			case "excludeFromCapture": cast 9;
			case "popupWmHint": cast 10;
			case "minimizeDisabled": cast 11;
			case "maximizeDisabled": cast 12;
			case "max": cast 13;
			case _: null;
		}
	}
}
