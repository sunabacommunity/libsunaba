package sunaba;

enum abstract ClipChildrenMode(Int) from Int to Int {
	var disabled = cast 0;
	var only = cast 1;
	var andDraw = cast 2;
	var max = cast 3;
	public static var values = [disabled, only, andDraw, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "only": cast 1;
			case "andDraw": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
