package sunaba;

enum abstract FontStyle(Int) from Int to Int {
	var bold = cast 1;
	var italic = cast 2;
	var fixedWidth = cast 4;
	public static var values = [bold, italic, fixedWidth];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bold": cast 1;
			case "italic": cast 2;
			case "fixedWidth": cast 4;
			case _: null;
		}
	}
}
