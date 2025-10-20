package newhaven.ui;

enum abstract GraphEditFocusMode(Int) from Int to Int {
	var none = cast 0;
	var click = cast 1;
	var all = cast 2;
	var accessibility = cast 3;
	public static var values = [none, click, all, accessibility];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "click": cast 1;
			case "all": cast 2;
			case "accessibility": cast 3;
			case _: null;
		}
	}
}
