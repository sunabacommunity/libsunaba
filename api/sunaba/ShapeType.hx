package sunaba;

enum abstract ShapeType(Int) from Int to Int {
	var worldBoundary = cast 0;
	var separationRay = cast 1;
	var segment = cast 2;
	var circle = cast 3;
	var rectangle = cast 4;
	var capsule = cast 5;
	var convexPolygon = cast 6;
	var concavePolygon = cast 7;
	var custom = cast 8;
	public static var values = [worldBoundary, separationRay, segment, circle, rectangle, capsule, convexPolygon, concavePolygon, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "worldBoundary": cast 0;
			case "separationRay": cast 1;
			case "segment": cast 2;
			case "circle": cast 3;
			case "rectangle": cast 4;
			case "capsule": cast 5;
			case "convexPolygon": cast 6;
			case "concavePolygon": cast 7;
			case "custom": cast 8;
			case _: null;
		}
	}
}
