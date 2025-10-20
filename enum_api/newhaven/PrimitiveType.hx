package newhaven;

enum abstract PrimitiveType(Int) from Int to Int {
	var points = cast 0;
	var lines = cast 1;
	var lineStrip = cast 2;
	var triangles = cast 3;
	var triangleStrip = cast 4;
	var max = cast 5;
	public static var values = [points, lines, lineStrip, triangles, triangleStrip, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "points": cast 0;
			case "lines": cast 1;
			case "lineStrip": cast 2;
			case "triangles": cast 3;
			case "triangleStrip": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
