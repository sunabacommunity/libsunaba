package newhaven;

enum abstract CenterOfMassModeEnum(Int) from Int to Int {
	var auto = cast 0;
	var custom = cast 1;
	public static var values = [auto, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "auto": cast 0;
			case "custom": cast 1;
			case _: null;
		}
	}
}
