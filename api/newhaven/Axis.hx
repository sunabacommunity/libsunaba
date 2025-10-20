package newhaven;

enum abstract Axis(Int) from Int to Int {
	var x = cast 0;
	var y = cast 1;
	var z = cast 2;
	var w = cast 3;
	public static var values = [x, y, z, w];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "x": cast 0;
			case "y": cast 1;
			case "z": cast 2;
			case "w": cast 3;
			case _: null;
		}
	}
}
