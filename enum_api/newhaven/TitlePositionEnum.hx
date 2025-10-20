package newhaven;

enum abstract TitlePositionEnum(Int) from Int to Int {
	var top = cast 0;
	var bottom = cast 1;
	public static var values = [top, bottom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "top": cast 0;
			case "bottom": cast 1;
			case _: null;
		}
	}
}
