package sunaba;

enum abstract FeedPosition(Int) from Int to Int {
	var unspecified = cast 0;
	var front = cast 1;
	var back = cast 2;
	public static var values = [unspecified, front, back];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unspecified": cast 0;
			case "front": cast 1;
			case "back": cast 2;
			case _: null;
		}
	}
}
