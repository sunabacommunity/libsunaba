package newhaven;

enum abstract MotionModeEnum(Int) from Int to Int {
	var grounded = cast 0;
	var floating = cast 1;
	public static var values = [grounded, floating];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "grounded": cast 0;
			case "floating": cast 1;
			case _: null;
		}
	}
}
