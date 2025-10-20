package newhaven;

enum abstract FontLcdSubpixelLayout(Int) from Int to Int {
	var none = cast 0;
	var hrgb = cast 1;
	var hbgr = cast 2;
	var vrgb = cast 3;
	var vbgr = cast 4;
	var max = cast 5;
	public static var values = [none, hrgb, hbgr, vrgb, vbgr, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "hrgb": cast 1;
			case "hbgr": cast 2;
			case "vrgb": cast 3;
			case "vbgr": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
