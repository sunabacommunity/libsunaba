package sunaba;

enum abstract ShaderLanguage(Int) from Int to Int {
	var glsl = cast 0;
	var hlsl = cast 1;
	public static var values = [glsl, hlsl];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "glsl": cast 0;
			case "hlsl": cast 1;
			case _: null;
		}
	}
}
