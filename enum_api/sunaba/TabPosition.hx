package sunaba;

enum abstract TabPosition(Int) from Int to Int {
	var top = cast 0;
	var bottom = cast 1;
	var max = cast 2;
	public static var values = [top, bottom, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "top": cast 0;
			case "bottom": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
