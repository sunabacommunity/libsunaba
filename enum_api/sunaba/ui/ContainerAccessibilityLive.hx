package sunaba.ui;

enum abstract ContainerAccessibilityLive(Int) from Int to Int {
	var off = cast 0;
	var polite = cast 1;
	var assertive = cast 2;
	public static var values = [off, polite, assertive];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "off": cast 0;
			case "polite": cast 1;
			case "assertive": cast 2;
			case _: null;
		}
	}
}
