package sunaba;

enum abstract ParticlesMode(Int) from Int to Int {
	var mode2d = cast 0;
	var mode3d = cast 1;
	public static var values = [mode2d, mode3d];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "mode2d": cast 0;
			case "mode3d": cast 1;
			case _: null;
		}
	}
}
