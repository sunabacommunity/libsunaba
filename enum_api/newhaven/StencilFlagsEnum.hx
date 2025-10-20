package newhaven;

enum abstract StencilFlagsEnum(Int) from Int to Int {
	var read = cast 1;
	var write = cast 2;
	var writeDepthFail = cast 4;
	public static var values = [read, write, writeDepthFail];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "read": cast 1;
			case "write": cast 2;
			case "writeDepthFail": cast 4;
			case _: null;
		}
	}
}
