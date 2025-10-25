package sunaba;

enum abstract SkeletonRigEnum(Int) from Int to Int {
	var openxr = cast 0;
	var humanoid = cast 1;
	var max = cast 2;
	public static var values = [openxr, humanoid, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "openxr": cast 0;
			case "humanoid": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
