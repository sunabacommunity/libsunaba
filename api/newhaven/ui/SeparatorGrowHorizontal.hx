package newhaven.ui;

enum abstract SeparatorGrowHorizontal(Int) from Int to Int {
	var begin = cast 0;
	var end = cast 1;
	var both = cast 2;
	public static var values = [begin, end, both];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "begin": cast 0;
			case "end": cast 1;
			case "both": cast 2;
			case _: null;
		}
	}
}
