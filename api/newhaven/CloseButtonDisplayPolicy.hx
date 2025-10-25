package sunaba;

enum abstract CloseButtonDisplayPolicy(Int) from Int to Int {
	var showNever = cast 0;
	var showActiveOnly = cast 1;
	var showAlways = cast 2;
	var max = cast 3;
	public static var values = [showNever, showActiveOnly, showAlways, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "showNever": cast 0;
			case "showActiveOnly": cast 1;
			case "showAlways": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
