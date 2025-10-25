package sunaba;

enum abstract BillboardModeEnum(Int) from Int to Int {
	var disabled = cast 0;
	var enabled = cast 1;
	var fixedY = cast 2;
	var particles = cast 3;
	public static var values = [disabled, enabled, fixedY, particles];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "enabled": cast 1;
			case "fixedY": cast 2;
			case "particles": cast 3;
			case _: null;
		}
	}
}
