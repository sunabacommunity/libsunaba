package newhaven;

enum abstract Orientation(Int) from Int to Int {
	var horizontal = cast 0;
	var vertical = cast 1;
	public static var values = [horizontal, vertical];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "horizontal": cast 0;
			case "vertical": cast 1;
			case _: null;
		}
	}
}
