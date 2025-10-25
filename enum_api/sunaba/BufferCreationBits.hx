package sunaba;

enum abstract BufferCreationBits(Int) from Int to Int {
	var deviceAddressBit = cast 1;
	var asStorageBit = cast 2;
	public static var values = [deviceAddressBit, asStorageBit];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "deviceAddressBit": cast 1;
			case "asStorageBit": cast 2;
			case _: null;
		}
	}
}
