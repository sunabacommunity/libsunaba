package sunaba;

enum abstract RotationAxis(Int) from Int to Int {
	var x = cast 0;
	var y = cast 1;
	var z = cast 2;
	var all = cast 3;
	var custom = cast 4;
	public static var values = [x, y, z, all, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "x": cast 0;
			case "y": cast 1;
			case "z": cast 2;
			case "all": cast 3;
			case "custom": cast 4;
			case _: null;
		}
	}
}
