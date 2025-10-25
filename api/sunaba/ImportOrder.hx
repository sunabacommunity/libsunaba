package sunaba;

enum abstract ImportOrder(Int) from Int to Int {
	var _default = cast 0;
	var scene = cast 100;
	public static var values = [_default, scene];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "scene": cast 100;
			case _: null;
		}
	}
}
