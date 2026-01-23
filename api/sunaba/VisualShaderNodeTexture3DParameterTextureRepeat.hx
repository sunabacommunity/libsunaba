package sunaba;

enum abstract VisualShaderNodeTexture3DParameterTextureRepeat(Int) from Int to Int {
	var _default = cast 0;
	var enabled = cast 1;
	var disabled = cast 2;
	var max = cast 3;
	public static var values = [_default, enabled, disabled, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_default": cast 0;
			case "enabled": cast 1;
			case "disabled": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
