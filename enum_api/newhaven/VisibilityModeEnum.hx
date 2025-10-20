package newhaven;

enum abstract VisibilityModeEnum(Int) from Int to Int {
	var always = cast 0;
	var touchscreenOnly = cast 1;
	public static var values = [always, touchscreenOnly];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "always": cast 0;
			case "touchscreenOnly": cast 1;
			case _: null;
		}
	}
}
