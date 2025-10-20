package newhaven;

enum abstract GutterType(Int) from Int to Int {
	var string = cast 0;
	var icon = cast 1;
	var custom = cast 2;
	public static var values = [string, icon, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "string": cast 0;
			case "icon": cast 1;
			case "custom": cast 2;
			case _: null;
		}
	}
}
