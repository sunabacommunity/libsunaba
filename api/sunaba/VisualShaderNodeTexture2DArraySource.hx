package sunaba;

enum abstract VisualShaderNodeTexture2DArraySource(Int) from Int to Int {
	var texture = cast 0;
	var port = cast 1;
	var max = cast 2;
	public static var values = [texture, port, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "texture": cast 0;
			case "port": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
