package newhaven.ui;

enum abstract HFlowContainerAlignment(Int) from Int to Int {
	var begin = cast 0;
	var center = cast 1;
	var end = cast 2;
	public static var values = [begin, center, end];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "begin": cast 0;
			case "center": cast 1;
			case "end": cast 2;
			case _: null;
		}
	}
}
