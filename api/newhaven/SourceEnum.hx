package newhaven;

enum abstract SourceEnum(Int) from Int to Int {
	var texture = cast 0;
	var screen = cast 1;
	var source2dTexture = cast 2;
	var source2dNormal = cast 3;
	var depth = cast 4;
	var port = cast 5;
	var source3dNormal = cast 6;
	var roughness = cast 7;
	var max = cast 8;
	public static var values = [texture, screen, source2dTexture, source2dNormal, depth, port, source3dNormal, roughness, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "texture": cast 0;
			case "screen": cast 1;
			case "source2dTexture": cast 2;
			case "source2dNormal": cast 3;
			case "depth": cast 4;
			case "port": cast 5;
			case "source3dNormal": cast 6;
			case "roughness": cast 7;
			case "max": cast 8;
			case _: null;
		}
	}
}
