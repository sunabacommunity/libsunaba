package sunaba;

enum abstract ViewportUpdateMode(Int) from Int to Int {
	var disabled = cast 0;
	var once = cast 1;
	var whenVisible = cast 2;
	var whenParentVisible = cast 3;
	var always = cast 4;
	public static var values = [disabled, once, whenVisible, whenParentVisible, always];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "once": cast 1;
			case "whenVisible": cast 2;
			case "whenParentVisible": cast 3;
			case "always": cast 4;
			case _: null;
		}
	}
}
