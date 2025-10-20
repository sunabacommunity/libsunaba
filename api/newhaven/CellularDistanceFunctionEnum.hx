package newhaven;

enum abstract CellularDistanceFunctionEnum(Int) from Int to Int {
	var euclidean = cast 0;
	var euclideanSquared = cast 1;
	var manhattan = cast 2;
	var hybrid = cast 3;
	public static var values = [euclidean, euclideanSquared, manhattan, hybrid];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "euclidean": cast 0;
			case "euclideanSquared": cast 1;
			case "manhattan": cast 2;
			case "hybrid": cast 3;
			case _: null;
		}
	}
}
