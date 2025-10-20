package newhaven;

enum abstract WindowResizeEdge(Int) from Int to Int {
	var topLeft = cast 0;
	var top = cast 1;
	var topRight = cast 2;
	var left = cast 3;
	var right = cast 4;
	var bottomLeft = cast 5;
	var bottom = cast 6;
	var bottomRight = cast 7;
	var max = cast 8;
	public static var values = [topLeft, top, topRight, left, right, bottomLeft, bottom, bottomRight, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "topLeft": cast 0;
			case "top": cast 1;
			case "topRight": cast 2;
			case "left": cast 3;
			case "right": cast 4;
			case "bottomLeft": cast 5;
			case "bottom": cast 6;
			case "bottomRight": cast 7;
			case "max": cast 8;
			case _: null;
		}
	}
}
