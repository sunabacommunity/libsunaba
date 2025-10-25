package sunaba;

enum abstract ModeFlags(Int) from Int to Int {
	var read = cast 1;
	var write = cast 2;
	var readWrite = cast 3;
	var writeRead = cast 7;
	public static var values = [read, write, readWrite, writeRead];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "read": cast 1;
			case "write": cast 2;
			case "readWrite": cast 3;
			case "writeRead": cast 7;
			case _: null;
		}
	}
}
