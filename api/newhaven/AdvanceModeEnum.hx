package sunaba;

enum abstract AdvanceModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var enabled = cast 1;
	var auto = cast 2;
	public static var values = [disabled, enabled, auto];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "enabled": cast 1;
			case "auto": cast 2;
			case _: null;
		}
	}
}
