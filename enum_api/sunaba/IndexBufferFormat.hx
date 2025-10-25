package sunaba;

enum abstract IndexBufferFormat(Int) from Int to Int {
	var uint16 = cast 0;
	var uint32 = cast 1;
	public static var values = [uint16, uint32];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "uint16": cast 0;
			case "uint32": cast 1;
			case _: null;
		}
	}
}
