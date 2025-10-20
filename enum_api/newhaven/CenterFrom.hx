package newhaven;

enum abstract CenterFrom(Int) from Int to Int {
	var worldOrigin = cast 0;
	var node = cast 1;
	var bone = cast 2;
	public static var values = [worldOrigin, node, bone];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "worldOrigin": cast 0;
			case "node": cast 1;
			case "bone": cast 2;
			case _: null;
		}
	}
}
