package sunaba.spatial.xr;

enum abstract OpenXRCompositionLayerQuadSwapchainStateBlueSwizzle(Int) from Int to Int {
	var red = cast 0;
	var green = cast 1;
	var blue = cast 2;
	var alpha = cast 3;
	var zero = cast 4;
	var one = cast 5;
	public static var values = [red, green, blue, alpha, zero, one];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "red": cast 0;
			case "green": cast 1;
			case "blue": cast 2;
			case "alpha": cast 3;
			case "zero": cast 4;
			case "one": cast 5;
			case _: null;
		}
	}
}
