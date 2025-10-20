package newhaven;

enum abstract IconModeEnum(Int) from Int to Int {
	var top = cast 0;
	var left = cast 1;
	public static var values = [top, left];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "top": cast 0;
			case "left": cast 1;
			case _: null;
		}
	}
}
