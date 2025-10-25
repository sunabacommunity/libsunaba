package sunaba;

enum abstract StorageBufferUsage(Int) from Int to Int {
	var indirect = cast 1;
	public static var values = [indirect];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "indirect": cast 1;
			case _: null;
		}
	}
}
