package sunaba;

enum abstract ViewportMsaa(Int) from Int to Int {
	var disabled = cast 0;
	var msaa2x = cast 1;
	var msaa4x = cast 2;
	var msaa8x = cast 3;
	var max = cast 4;
	public static var values = [disabled, msaa2x, msaa4x, msaa8x, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "msaa2x": cast 1;
			case "msaa4x": cast 2;
			case "msaa8x": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
