package sunaba;

enum abstract PathSegmentType(Int) from Int to Int {
	var region = cast 0;
	var link = cast 1;
	public static var values = [region, link];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "region": cast 0;
			case "link": cast 1;
			case _: null;
		}
	}
}
