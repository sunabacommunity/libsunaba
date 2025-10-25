package sunaba;

enum abstract TextureModeEnum(Int) from Int to Int {
	var rgb = cast 0;
	var red = cast 1;
	public static var values = [rgb, red];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "rgb": cast 0;
			case "red": cast 1;
			case _: null;
		}
	}
}
