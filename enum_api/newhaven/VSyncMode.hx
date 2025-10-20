package newhaven;

enum abstract VSyncMode(Int) from Int to Int {
	var disabled = cast 0;
	var enabled = cast 1;
	var adaptive = cast 2;
	var mailbox = cast 3;
	public static var values = [disabled, enabled, adaptive, mailbox];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "enabled": cast 1;
			case "adaptive": cast 2;
			case "mailbox": cast 3;
			case _: null;
		}
	}
}
