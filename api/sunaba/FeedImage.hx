package sunaba;

enum abstract FeedImage(Int) from Int to Int {
	var rgbaImage = cast 0;
	var cbcrImage = cast 1;
	public static var values = [rgbaImage, cbcrImage];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "rgbaImage": cast 0;
			case "cbcrImage": cast 1;
			case _: null;
		}
	}
}
