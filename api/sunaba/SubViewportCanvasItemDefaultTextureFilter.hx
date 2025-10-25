package sunaba;

enum abstract SubViewportCanvasItemDefaultTextureFilter(Int) from Int to Int {
	var nearest = cast 0;
	var linear = cast 1;
	var linearWithMipmaps = cast 2;
	var nearestWithMipmaps = cast 3;
	var max = cast 4;
	public static var values = [nearest, linear, linearWithMipmaps, nearestWithMipmaps, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "nearest": cast 0;
			case "linear": cast 1;
			case "linearWithMipmaps": cast 2;
			case "nearestWithMipmaps": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
