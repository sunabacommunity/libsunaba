package sunaba;

enum abstract CanvasTextureChannel(Int) from Int to Int {
	var diffuse = cast 0;
	var normal = cast 1;
	var specular = cast 2;
	public static var values = [diffuse, normal, specular];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "diffuse": cast 0;
			case "normal": cast 1;
			case "specular": cast 2;
			case _: null;
		}
	}
}
