package sunaba;

enum abstract MetaUnderline(Int) from Int to Int {
	var never = cast 0;
	var always = cast 1;
	var onHover = cast 2;
	public static var values = [never, always, onHover];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "never": cast 0;
			case "always": cast 1;
			case "onHover": cast 2;
			case _: null;
		}
	}
}
