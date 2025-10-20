package newhaven;

enum abstract AccessibilityScrollUnit(Int) from Int to Int {
	var item = cast 0;
	var page = cast 1;
	public static var values = [item, page];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "item": cast 0;
			case "page": cast 1;
			case _: null;
		}
	}
}
