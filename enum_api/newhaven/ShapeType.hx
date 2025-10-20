package newhaven;

enum abstract ShapeType(Int) from Int to Int {
	var worldBoundary = cast 0;
	var separationRay = cast 1;
	var sphere = cast 2;
	var box = cast 3;
	var capsule = cast 4;
	var cylinder = cast 5;
	var convexPolygon = cast 6;
	var concavePolygon = cast 7;
	var heightmap = cast 8;
	var softBody = cast 9;
	var custom = cast 10;
	public static var values = [worldBoundary, separationRay, sphere, box, capsule, cylinder, convexPolygon, concavePolygon, heightmap, softBody, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "worldBoundary": cast 0;
			case "separationRay": cast 1;
			case "sphere": cast 2;
			case "box": cast 3;
			case "capsule": cast 4;
			case "cylinder": cast 5;
			case "convexPolygon": cast 6;
			case "concavePolygon": cast 7;
			case "heightmap": cast 8;
			case "softBody": cast 9;
			case "custom": cast 10;
			case _: null;
		}
	}
}
