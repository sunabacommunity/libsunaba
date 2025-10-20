package newhaven;

enum abstract CubeMapLayer(Int) from Int to Int {
	var left = cast 0;
	var right = cast 1;
	var bottom = cast 2;
	var top = cast 3;
	var front = cast 4;
	var back = cast 5;
	public static var values = [left, right, bottom, top, front, back];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "left": cast 0;
			case "right": cast 1;
			case "bottom": cast 2;
			case "top": cast 3;
			case "front": cast 4;
			case "back": cast 5;
			case _: null;
		}
	}
}
