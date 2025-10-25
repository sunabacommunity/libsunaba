package sunaba;

enum abstract AnchorModeEnum(Int) from Int to Int {
	var fixedTopLeft = cast 0;
	var dragCenter = cast 1;
	public static var values = [fixedTopLeft, dragCenter];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "fixedTopLeft": cast 0;
			case "dragCenter": cast 1;
			case _: null;
		}
	}
}
