package sunaba;

enum abstract PeerState(Int) from Int to Int {
	var disconnected = cast 0;
	var connecting = cast 1;
	var acknowledgingConnect = cast 2;
	var connectionPending = cast 3;
	var connectionSucceeded = cast 4;
	var connected = cast 5;
	var disconnectLater = cast 6;
	var disconnecting = cast 7;
	var acknowledgingDisconnect = cast 8;
	var zombie = cast 9;
	public static var values = [disconnected, connecting, acknowledgingConnect, connectionPending, connectionSucceeded, connected, disconnectLater, disconnecting, acknowledgingDisconnect, zombie];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disconnected": cast 0;
			case "connecting": cast 1;
			case "acknowledgingConnect": cast 2;
			case "connectionPending": cast 3;
			case "connectionSucceeded": cast 4;
			case "connected": cast 5;
			case "disconnectLater": cast 6;
			case "disconnecting": cast 7;
			case "acknowledgingDisconnect": cast 8;
			case "zombie": cast 9;
			case _: null;
		}
	}
}
