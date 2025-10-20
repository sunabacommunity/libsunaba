package newhaven;

enum abstract Status(Int) from Int to Int {
	var disconnected = cast 0;
	var handshaking = cast 1;
	var connected = cast 2;
	var error = cast 3;
	var errorHostnameMismatch = cast 4;
	public static var values = [disconnected, handshaking, connected, error, errorHostnameMismatch];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disconnected": cast 0;
			case "handshaking": cast 1;
			case "connected": cast 2;
			case "error": cast 3;
			case "errorHostnameMismatch": cast 4;
			case _: null;
		}
	}
}
