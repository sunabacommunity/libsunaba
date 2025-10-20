package newhaven;

enum abstract AccessibilityPopupType(Int) from Int to Int {
	var menu = cast 0;
	var list = cast 1;
	var tree = cast 2;
	var dialog = cast 3;
	public static var values = [menu, list, tree, dialog];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "menu": cast 0;
			case "list": cast 1;
			case "tree": cast 2;
			case "dialog": cast 3;
			case _: null;
		}
	}
}
