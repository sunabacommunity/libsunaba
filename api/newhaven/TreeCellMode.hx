package newhaven;

enum abstract TreeCellMode(Int) from Int to Int {
	var string = cast 0;
	var check = cast 1;
	var range = cast 2;
	var icon = cast 3;
	var custom = cast 4;
	public static var values = [string, check, range, icon, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "string": cast 0;
			case "check": cast 1;
			case "range": cast 2;
			case "icon": cast 3;
			case "custom": cast 4;
			case _: null;
		}
	}
}
