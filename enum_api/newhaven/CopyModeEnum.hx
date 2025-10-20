package newhaven;

enum abstract CopyModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var rect = cast 1;
	var viewport = cast 2;
	public static var values = [disabled, rect, viewport];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "rect": cast 1;
			case "viewport": cast 2;
			case _: null;
		}
	}
}
