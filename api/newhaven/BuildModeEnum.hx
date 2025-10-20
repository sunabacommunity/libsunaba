package newhaven;

enum abstract BuildModeEnum(Int) from Int to Int {
	var solids = cast 0;
	var segments = cast 1;
	public static var values = [solids, segments];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "solids": cast 0;
			case "segments": cast 1;
			case _: null;
		}
	}
}
