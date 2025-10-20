package newhaven;

enum abstract ShadowFilterEnum(Int) from Int to Int {
	var none = cast 0;
	var pcf5 = cast 1;
	var pcf13 = cast 2;
	public static var values = [none, pcf5, pcf13];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "pcf5": cast 1;
			case "pcf13": cast 2;
			case _: null;
		}
	}
}
