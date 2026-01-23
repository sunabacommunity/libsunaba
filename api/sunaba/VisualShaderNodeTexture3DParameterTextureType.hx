package sunaba;

enum abstract VisualShaderNodeTexture3DParameterTextureType(Int) from Int to Int {
	var data = cast 0;
	var color = cast 1;
	var normalMap = cast 2;
	var anisotropy = cast 3;
	var max = cast 4;
	public static var values = [data, color, normalMap, anisotropy, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "data": cast 0;
			case "color": cast 1;
			case "normalMap": cast 2;
			case "anisotropy": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
