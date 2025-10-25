package sunaba;

enum abstract FeedDataType(Int) from Int to Int {
	var noimage = cast 0;
	var rgb = cast 1;
	var ycbcr = cast 2;
	var ycbcrSep = cast 3;
	var external = cast 4;
	public static var values = [noimage, rgb, ycbcr, ycbcrSep, external];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "noimage": cast 0;
			case "rgb": cast 1;
			case "ycbcr": cast 2;
			case "ycbcrSep": cast 3;
			case "external": cast 4;
			case _: null;
		}
	}
}
