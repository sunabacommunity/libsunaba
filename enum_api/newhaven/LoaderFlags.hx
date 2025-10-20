package newhaven;

enum abstract LoaderFlags(Int) from Int to Int {
	var none = cast 0;
	var forceLinear = cast 1;
	var convertColors = cast 2;
	public static var values = [none, forceLinear, convertColors];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "forceLinear": cast 1;
			case "convertColors": cast 2;
			case _: null;
		}
	}
}
