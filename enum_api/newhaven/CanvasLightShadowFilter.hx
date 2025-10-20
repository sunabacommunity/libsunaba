package newhaven;

enum abstract CanvasLightShadowFilter(Int) from Int to Int {
	var none = cast 0;
	var pcf5 = cast 1;
	var pcf13 = cast 2;
	var max = cast 3;
	public static var values = [none, pcf5, pcf13, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "pcf5": cast 1;
			case "pcf13": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
