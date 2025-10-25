package sunaba;

enum abstract DofBokehShape(Int) from Int to Int {
	var box = cast 0;
	var hexagon = cast 1;
	var circle = cast 2;
	public static var values = [box, hexagon, circle];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "box": cast 0;
			case "hexagon": cast 1;
			case "circle": cast 2;
			case _: null;
		}
	}
}
