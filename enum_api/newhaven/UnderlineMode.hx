package newhaven;

enum abstract UnderlineMode(Int) from Int to Int {
	var always = cast 0;
	var onHover = cast 1;
	var never = cast 2;
	public static var values = [always, onHover, never];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "always": cast 0;
			case "onHover": cast 1;
			case "never": cast 2;
			case _: null;
		}
	}
}
