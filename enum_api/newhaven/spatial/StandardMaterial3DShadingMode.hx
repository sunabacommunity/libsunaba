package newhaven.spatial;

enum abstract StandardMaterial3DShadingMode(Int) from Int to Int {
	var unshaded = cast 0;
	var perPixel = cast 1;
	var perVertex = cast 2;
	var max = cast 3;
	public static var values = [unshaded, perPixel, perVertex, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unshaded": cast 0;
			case "perPixel": cast 1;
			case "perVertex": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
