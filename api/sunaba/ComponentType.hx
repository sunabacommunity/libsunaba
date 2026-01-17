package sunaba;

enum abstract ComponentType(Int) from Int to Int {
	var bounded2d = cast 1;
	var bounded3d = cast 2;
	var parent = cast 3;
	var mesh3d = cast 4;
	var planeAlignment = cast 1000741000;
	var mesh2d = cast 1000741001;
	var polygon2d = cast 1000741002;
	var planeSemanticLabel = cast 1000741003;
	var marker = cast 1000743000;
	var anchor = cast 1000762000;
	var persistence = cast 1000763000;
	public static var values = [bounded2d, bounded3d, parent, mesh3d, planeAlignment, mesh2d, polygon2d, planeSemanticLabel, marker, anchor, persistence];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bounded2d": cast 1;
			case "bounded3d": cast 2;
			case "parent": cast 3;
			case "mesh3d": cast 4;
			case "planeAlignment": cast 1000741000;
			case "mesh2d": cast 1000741001;
			case "polygon2d": cast 1000741002;
			case "planeSemanticLabel": cast 1000741003;
			case "marker": cast 1000743000;
			case "anchor": cast 1000762000;
			case "persistence": cast 1000763000;
			case _: null;
		}
	}
}
