package sunaba;

enum abstract RenderPrimitive(Int) from Int to Int {
	var points = cast 0;
	var lines = cast 1;
	var linesWithAdjacency = cast 2;
	var linestrips = cast 3;
	var linestripsWithAdjacency = cast 4;
	var triangles = cast 5;
	var trianglesWithAdjacency = cast 6;
	var triangleStrips = cast 7;
	var triangleStripsWithAjacency = cast 8;
	var triangleStripsWithRestartIndex = cast 9;
	var tesselationPatch = cast 10;
	var max = cast 11;
	public static var values = [points, lines, linesWithAdjacency, linestrips, linestripsWithAdjacency, triangles, trianglesWithAdjacency, triangleStrips, triangleStripsWithAjacency, triangleStripsWithRestartIndex, tesselationPatch, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "points": cast 0;
			case "lines": cast 1;
			case "linesWithAdjacency": cast 2;
			case "linestrips": cast 3;
			case "linestripsWithAdjacency": cast 4;
			case "triangles": cast 5;
			case "trianglesWithAdjacency": cast 6;
			case "triangleStrips": cast 7;
			case "triangleStripsWithAjacency": cast 8;
			case "triangleStripsWithRestartIndex": cast 9;
			case "tesselationPatch": cast 10;
			case "max": cast 11;
			case _: null;
		}
	}
}
