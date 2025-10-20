package newhaven;

enum abstract SdfOversizeEnum(Int) from Int to Int {
	var oversize100Percent = cast 0;
	var oversize120Percent = cast 1;
	var oversize150Percent = cast 2;
	var oversize200Percent = cast 3;
	var max = cast 4;
	public static var values = [oversize100Percent, oversize120Percent, oversize150Percent, oversize200Percent, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "oversize100Percent": cast 0;
			case "oversize120Percent": cast 1;
			case "oversize150Percent": cast 2;
			case "oversize200Percent": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
