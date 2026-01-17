package sunaba;

enum abstract PlaneAlignment(Int) from Int to Int {
	var horizontalUpward = cast 0;
	var horizontalDownward = cast 1;
	var vertical = cast 2;
	var arbitrary = cast 3;
	public static var values = [horizontalUpward, horizontalDownward, vertical, arbitrary];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "horizontalUpward": cast 0;
			case "horizontalDownward": cast 1;
			case "vertical": cast 2;
			case "arbitrary": cast 3;
			case _: null;
		}
	}
}
