package newhaven;

enum abstract SourceGeometryModeEnum(Int) from Int to Int {
	var rootNodeChildren = cast 0;
	var groupsWithChildren = cast 1;
	var groupsExplicit = cast 2;
	var max = cast 3;
	public static var values = [rootNodeChildren, groupsWithChildren, groupsExplicit, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "rootNodeChildren": cast 0;
			case "groupsWithChildren": cast 1;
			case "groupsExplicit": cast 2;
			case "max": cast 3;
			case _: null;
		}
	}
}
