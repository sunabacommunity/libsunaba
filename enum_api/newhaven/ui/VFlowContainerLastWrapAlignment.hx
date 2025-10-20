package newhaven.ui;

enum abstract VFlowContainerLastWrapAlignment(Int) from Int to Int {
	var inherit = cast 0;
	var begin = cast 1;
	var center = cast 2;
	var end = cast 3;
	public static var values = [inherit, begin, center, end];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "inherit": cast 0;
			case "begin": cast 1;
			case "center": cast 2;
			case "end": cast 3;
			case _: null;
		}
	}
}
