package newhaven;

enum abstract AutoAdvanceMode(Int) from Int to Int {
	var disabled = cast 0;
	var enabled = cast 1;
	var returnToHold = cast 2;
	public static var values = [disabled, enabled, returnToHold];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "enabled": cast 1;
			case "returnToHold": cast 2;
			case _: null;
		}
	}
}
