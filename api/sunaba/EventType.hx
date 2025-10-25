package sunaba;

enum abstract EventType(Int) from Int to Int {
	var none = cast 0;
	var connect = cast 1;
	var disconnect = cast 2;
	var receive = cast 3;
	var error = cast -1;
	public static var values = [none, connect, disconnect, receive, error];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "connect": cast 1;
			case "disconnect": cast 2;
			case "receive": cast 3;
			case "error": cast -1;
			case _: null;
		}
	}
}
