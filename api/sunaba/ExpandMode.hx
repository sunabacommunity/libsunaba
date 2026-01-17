package sunaba;

enum abstract ExpandMode(Int) from Int to Int {
	var originalSize = cast 0;
	var fitToText = cast 1;
	var fitToLineEdit = cast 2;
	public static var values = [originalSize, fitToText, fitToLineEdit];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "originalSize": cast 0;
			case "fitToText": cast 1;
			case "fitToLineEdit": cast 2;
			case _: null;
		}
	}
}
