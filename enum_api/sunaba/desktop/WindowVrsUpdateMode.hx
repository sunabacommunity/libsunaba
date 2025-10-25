package sunaba.desktop;

enum abstract WindowVrsUpdateMode(Int) from Int to Int {
	var disabled = cast 0;
	var once = cast 1;
	var always = cast 2;
	var max = cast 3;
	public static var values = [disabled, once, always, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "once": cast 1;
			case "always": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
