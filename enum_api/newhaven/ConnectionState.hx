package newhaven;

enum abstract ConnectionState(Int) from Int to Int {
	var _new = cast 0;
	var connecting = cast 1;
	var connected = cast 2;
	var disconnected = cast 3;
	var failed = cast 4;
	var closed = cast 5;
	public static var values = [_new, connecting, connected, disconnected, failed, closed];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_new": cast 0;
			case "connecting": cast 1;
			case "connected": cast 2;
			case "disconnected": cast 3;
			case "failed": cast 4;
			case "closed": cast 5;
			case _: null;
		}
	}
}
