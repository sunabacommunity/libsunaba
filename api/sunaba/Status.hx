package sunaba;

enum abstract Status(Int) from Int to Int {
	var none = cast 0;
	var connecting = cast 1;
	var connected = cast 2;
	var error = cast 3;
	public static var values = [none, connecting, connected, error];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "connecting": cast 1;
			case "connected": cast 2;
			case "error": cast 3;
			case _: null;
		}
	}
}
