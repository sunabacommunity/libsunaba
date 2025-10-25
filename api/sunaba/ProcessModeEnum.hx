package sunaba;

enum abstract ProcessModeEnum(Int) from Int to Int {
	var automatic = cast 0;
	var quality = cast 1;
	var incremental = cast 2;
	var realtime = cast 3;
	public static var values = [automatic, quality, incremental, realtime];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "automatic": cast 0;
			case "quality": cast 1;
			case "incremental": cast 2;
			case "realtime": cast 3;
			case _: null;
		}
	}
}
