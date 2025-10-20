package newhaven;

enum abstract SdfScaleEnum(Int) from Int to Int {
	var scale100Percent = cast 0;
	var scale50Percent = cast 1;
	var scale25Percent = cast 2;
	var max = cast 3;
	public static var values = [scale100Percent, scale50Percent, scale25Percent, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "scale100Percent": cast 0;
			case "scale50Percent": cast 1;
			case "scale25Percent": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
