package sunaba;

enum abstract FillModeEnum(Int) from Int to Int {
	var beginToEnd = cast 0;
	var endToBegin = cast 1;
	var topToBottom = cast 2;
	var bottomToTop = cast 3;
	public static var values = [beginToEnd, endToBegin, topToBottom, bottomToTop];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "beginToEnd": cast 0;
			case "endToBegin": cast 1;
			case "topToBottom": cast 2;
			case "bottomToTop": cast 3;
			case _: null;
		}
	}
}
