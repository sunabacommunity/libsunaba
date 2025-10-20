package newhaven;

enum abstract FractalTypeEnum(Int) from Int to Int {
	var none = cast 0;
	var fbm = cast 1;
	var ridged = cast 2;
	var pingPong = cast 3;
	public static var values = [none, fbm, ridged, pingPong];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "fbm": cast 1;
			case "ridged": cast 2;
			case "pingPong": cast 3;
			case _: null;
		}
	}
}
