package newhaven;

enum abstract ConnectionStatus(Int) from Int to Int {
	var disconnected = cast 0;
	var connecting = cast 1;
	var connected = cast 2;
	public static var values = [disconnected, connecting, connected];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disconnected": cast 0;
			case "connecting": cast 1;
			case "connected": cast 2;
			case _: null;
		}
	}
}
