package sunaba;

enum abstract SubViewportAnisotropicFilteringLevel(Int) from Int to Int {
	var disabled = cast 0;
	var anisotropy2x = cast 1;
	var anisotropy4x = cast 2;
	var anisotropy8x = cast 3;
	var anisotropy16x = cast 4;
	var max = cast 5;
	public static var values = [disabled, anisotropy2x, anisotropy4x, anisotropy8x, anisotropy16x, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "anisotropy2x": cast 1;
			case "anisotropy4x": cast 2;
			case "anisotropy8x": cast 3;
			case "anisotropy16x": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
