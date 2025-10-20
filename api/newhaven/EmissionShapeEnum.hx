package newhaven;

enum abstract EmissionShapeEnum(Int) from Int to Int {
	var point = cast 0;
	var sphere = cast 1;
	var sphereSurface = cast 2;
	var box = cast 3;
	var points = cast 4;
	var directedPoints = cast 5;
	var ring = cast 6;
	var max = cast 7;
	public static var values = [point, sphere, sphereSurface, box, points, directedPoints, ring, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "point": cast 0;
			case "sphere": cast 1;
			case "sphereSurface": cast 2;
			case "box": cast 3;
			case "points": cast 4;
			case "directedPoints": cast 5;
			case "ring": cast 6;
			case "max": cast 7;
			case _: null;
		}
	}
}
