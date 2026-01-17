package sunaba;

enum abstract SplashStretchMode(Int) from Int to Int {
	var disabled = cast 0;
	var keep = cast 1;
	var keepWidth = cast 2;
	var keepHeight = cast 3;
	var cover = cast 4;
	var ignore = cast 5;
	public static var values = [disabled, keep, keepWidth, keepHeight, cover, ignore];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "keep": cast 1;
			case "keepWidth": cast 2;
			case "keepHeight": cast 3;
			case "cover": cast 4;
			case "ignore": cast 5;
			case _: null;
		}
	}
}
