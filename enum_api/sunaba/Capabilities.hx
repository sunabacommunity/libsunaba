package sunaba;

enum abstract Capabilities(Int) from Int to Int {
	var none = cast 0;
	var mono = cast 1;
	var stereo = cast 2;
	var quad = cast 4;
	var vr = cast 8;
	var ar = cast 16;
	var external = cast 32;
	public static var values = [none, mono, stereo, quad, vr, ar, external];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "mono": cast 1;
			case "stereo": cast 2;
			case "quad": cast 4;
			case "vr": cast 8;
			case "ar": cast 16;
			case "external": cast 32;
			case _: null;
		}
	}
}
