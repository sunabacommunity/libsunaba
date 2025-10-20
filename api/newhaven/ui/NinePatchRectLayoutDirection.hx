package newhaven.ui;

enum abstract NinePatchRectLayoutDirection(Int) from Int to Int {
	var inherited = cast 0;
	var applicationLocale = cast 1;
	var ltr = cast 2;
	var rtl = cast 3;
	var systemLocale = cast 4;
	var max = cast 5;
	public static var values = [inherited, applicationLocale, ltr, rtl, systemLocale, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "inherited": cast 0;
			case "applicationLocale": cast 1;
			case "ltr": cast 2;
			case "rtl": cast 3;
			case "systemLocale": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
