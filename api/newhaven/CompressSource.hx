package newhaven;

enum abstract CompressSource(Int) from Int to Int {
	var generic = cast 0;
	var srgb = cast 1;
	var normal = cast 2;
	public static var values = [generic, srgb, normal];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "generic": cast 0;
			case "srgb": cast 1;
			case "normal": cast 2;
			case _: null;
		}
	}
}
