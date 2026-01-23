package sunaba;

enum abstract VisualShaderNodeTexture2DArrayParameterTextureSource(Int) from Int to Int {
	var none = cast 0;
	var screen = cast 1;
	var depth = cast 2;
	var normalRoughness = cast 3;
	var max = cast 4;
	public static var values = [none, screen, depth, normalRoughness, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "screen": cast 1;
			case "depth": cast 2;
			case "normalRoughness": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
