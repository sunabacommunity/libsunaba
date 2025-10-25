package sunaba;

enum abstract VoxelGIQuality(Int) from Int to Int {
	var low = cast 0;
	var high = cast 1;
	public static var values = [low, high];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "low": cast 0;
			case "high": cast 1;
			case _: null;
		}
	}
}
