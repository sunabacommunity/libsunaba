package sunaba.spatial;

enum abstract SpriteBase3DGILightmapScale(Int) from Int to Int {
	var scale1x = cast 0;
	var scale2x = cast 1;
	var scale4x = cast 2;
	var scale8x = cast 3;
	var max = cast 4;
	public static var values = [scale1x, scale2x, scale4x, scale8x, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "scale1x": cast 0;
			case "scale2x": cast 1;
			case "scale4x": cast 2;
			case "scale8x": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
