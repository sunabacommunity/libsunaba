package sunaba;

enum abstract DepthTestEnum(Int) from Int to Int {
	var _default = cast 0;
	var inverted = cast 1;
	public static var values = [_default, inverted];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "inverted": cast 1;
			case _: null;
		}
	}
}
