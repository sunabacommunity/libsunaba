package sunaba;

enum abstract SamplePartitionTypeEnum(Int) from Int to Int {
	var convexPartition = cast 0;
	var triangulate = cast 1;
	var max = cast 2;
	public static var values = [convexPartition, triangulate, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "convexPartition": cast 0;
			case "triangulate": cast 1;
			case "max": cast 2;
			case _: null;
		}
	}
}
