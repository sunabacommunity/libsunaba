package newhaven.desktop;

enum abstract AcceptDialogContentScaleStretch(Int) from Int to Int {
	var fractional = cast 0;
	var integer = cast 1;
	public static var values = [fractional, integer];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "fractional": cast 0;
			case "integer": cast 1;
			case _: null;
		}
	}
}
