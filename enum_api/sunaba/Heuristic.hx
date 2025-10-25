package sunaba;

enum abstract Heuristic(Int) from Int to Int {
	var euclidean = cast 0;
	var manhattan = cast 1;
	var octile = cast 2;
	var chebyshev = cast 3;
	var max = cast 4;
	public static var values = [euclidean, manhattan, octile, chebyshev, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "euclidean": cast 0;
			case "manhattan": cast 1;
			case "octile": cast 2;
			case "chebyshev": cast 3;
			case "max": cast 4;
			case _: null;
		}
	}
}
