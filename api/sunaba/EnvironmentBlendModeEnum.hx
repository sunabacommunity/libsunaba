package sunaba;

enum abstract EnvironmentBlendModeEnum(Int) from Int to Int {
	var opaque = cast 0;
	var additive = cast 1;
	var alphaBlend = cast 2;
	public static var values = [opaque, additive, alphaBlend];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "opaque": cast 0;
			case "additive": cast 1;
			case "alphaBlend": cast 2;
			case _: null;
		}
	}
}
