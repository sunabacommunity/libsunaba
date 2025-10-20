package newhaven.spatial.xr;

enum abstract OpenXRCompositionLayerCylinderSwapchainStateVerticalWrap(Int) from Int to Int {
	var clampToBorder = cast 0;
	var clampToEdge = cast 1;
	var repeat = cast 2;
	var mirroredRepeat = cast 3;
	var mirrorClampToEdge = cast 4;
	public static var values = [clampToBorder, clampToEdge, repeat, mirroredRepeat, mirrorClampToEdge];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "clampToBorder": cast 0;
			case "clampToEdge": cast 1;
			case "repeat": cast 2;
			case "mirroredRepeat": cast 3;
			case "mirrorClampToEdge": cast 4;
			case _: null;
		}
	}
}
