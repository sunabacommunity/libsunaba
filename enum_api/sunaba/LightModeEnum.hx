package sunaba;

enum abstract LightModeEnum(Int) from Int to Int {
	var normal = cast 0;
	var unshaded = cast 1;
	var lightOnly = cast 2;
	public static var values = [normal, unshaded, lightOnly];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "normal": cast 0;
			case "unshaded": cast 1;
			case "lightOnly": cast 2;
			case _: null;
		}
	}
}
