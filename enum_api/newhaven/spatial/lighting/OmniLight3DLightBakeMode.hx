package sunaba.spatial.lighting;

enum abstract OmniLight3DLightBakeMode(Int) from Int to Int {
	var disabled = cast 0;
	var _static = cast 1;
	var _dynamic = cast 2;
	public static var values = [disabled, _static, _dynamic];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "_static": cast 1;
			case "_dynamic": cast 2;
			case _: null;
		}
	}
}
