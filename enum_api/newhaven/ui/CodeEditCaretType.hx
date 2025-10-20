package newhaven.ui;

enum abstract CodeEditCaretType(Int) from Int to Int {
	var line = cast 0;
	var block = cast 1;
	public static var values = [line, block];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "line": cast 0;
			case "block": cast 1;
			case _: null;
		}
	}
}
