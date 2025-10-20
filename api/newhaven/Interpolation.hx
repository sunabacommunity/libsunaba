package newhaven;

enum abstract Interpolation(Int) from Int to Int {
	var nearest = cast 0;
	var bilinear = cast 1;
	var cubic = cast 2;
	var trilinear = cast 3;
	var lanczos = cast 4;
	public static var values = [nearest, bilinear, cubic, trilinear, lanczos];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "nearest": cast 0;
			case "bilinear": cast 1;
			case "cubic": cast 2;
			case "trilinear": cast 3;
			case "lanczos": cast 4;
			case _: null;
		}
	}
}
