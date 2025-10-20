package newhaven;

enum abstract PolyEndType(Int) from Int to Int {
	var polygon = cast 0;
	var joined = cast 1;
	var butt = cast 2;
	var square = cast 3;
	var round = cast 4;
	public static var values = [polygon, joined, butt, square, round];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "polygon": cast 0;
			case "joined": cast 1;
			case "butt": cast 2;
			case "square": cast 3;
			case "round": cast 4;
			case _: null;
		}
	}
}
