package newhaven;

enum abstract OpenXRAlphaBlendModeSupport(Int) from Int to Int {
	var none = cast 0;
	var real = cast 1;
	var emulating = cast 2;
	public static var values = [none, real, emulating];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "real": cast 1;
			case "emulating": cast 2;
			case _: null;
		}
	}
}
