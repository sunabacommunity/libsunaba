package sunaba;

enum abstract ShadowMode(Int) from Int to Int {
	var dualParaboloid = cast 0;
	var cube = cast 1;
	public static var values = [dualParaboloid, cube];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "dualParaboloid": cast 0;
			case "cube": cast 1;
			case _: null;
		}
	}
}
