package sunaba;

enum abstract VisualShaderNodeCubemapParameterColorDefault(Int) from Int to Int {
	var white = cast 0;
	var black = cast 1;
	var transparent = cast 2;
	var max = cast 3;
	public static var values = [white, black, transparent, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "white": cast 0;
			case "black": cast 1;
			case "transparent": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
