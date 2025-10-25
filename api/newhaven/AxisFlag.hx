package sunaba;

enum abstract AxisFlag(Int) from Int to Int {
	var x = cast 1;
	var y = cast 2;
	var z = cast 4;
	var all = cast 7;
	public static var values = [x, y, z, all];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "x": cast 1;
			case "y": cast 2;
			case "z": cast 4;
			case "all": cast 7;
			case _: null;
		}
	}
}
