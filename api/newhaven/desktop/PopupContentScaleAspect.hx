package newhaven.desktop;

enum abstract PopupContentScaleAspect(Int) from Int to Int {
	var ignore = cast 0;
	var keep = cast 1;
	var keepWidth = cast 2;
	var keepHeight = cast 3;
	var expand = cast 4;
	public static var values = [ignore, keep, keepWidth, keepHeight, expand];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "ignore": cast 0;
			case "keep": cast 1;
			case "keepWidth": cast 2;
			case "keepHeight": cast 3;
			case "expand": cast 4;
			case _: null;
		}
	}
}
