package newhaven;

enum abstract EnvironmentGlowBlendMode(Int) from Int to Int {
	var additive = cast 0;
	var screen = cast 1;
	var softlight = cast 2;
	var replace = cast 3;
	var mix = cast 4;
	public static var values = [additive, screen, softlight, replace, mix];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "additive": cast 0;
			case "screen": cast 1;
			case "softlight": cast 2;
			case "replace": cast 3;
			case "mix": cast 4;
			case _: null;
		}
	}
}
