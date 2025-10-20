package newhaven;

enum abstract LineCapMode(Int) from Int to Int {
	var none = cast 0;
	var box = cast 1;
	var round = cast 2;
	public static var values = [none, box, round];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "box": cast 1;
			case "round": cast 2;
			case _: null;
		}
	}
}
