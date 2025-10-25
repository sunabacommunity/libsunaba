package sunaba;

enum abstract Planes(Int) from Int to Int {
	var near = cast 0;
	var far = cast 1;
	var left = cast 2;
	var top = cast 3;
	var right = cast 4;
	var bottom = cast 5;
	public static var values = [near, far, left, top, right, bottom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "near": cast 0;
			case "far": cast 1;
			case "left": cast 2;
			case "top": cast 3;
			case "right": cast 4;
			case "bottom": cast 5;
			case _: null;
		}
	}
}
