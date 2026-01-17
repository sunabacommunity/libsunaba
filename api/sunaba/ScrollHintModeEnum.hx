package sunaba;

enum abstract ScrollHintModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var both = cast 1;
	var top = cast 2;
	var bottom = cast 3;
	public static var values = [disabled, both, top, bottom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "both": cast 1;
			case "top": cast 2;
			case "bottom": cast 3;
			case _: null;
		}
	}
}
