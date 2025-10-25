package sunaba.ui;

enum abstract CodeEditTextDirection(Int) from Int to Int {
	var auto = cast 0;
	var ltr = cast 1;
	var rtl = cast 2;
	var inherited = cast 3;
	public static var values = [auto, ltr, rtl, inherited];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "auto": cast 0;
			case "ltr": cast 1;
			case "rtl": cast 2;
			case "inherited": cast 3;
			case _: null;
		}
	}
}
